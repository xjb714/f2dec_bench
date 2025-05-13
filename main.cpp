#include <stdio.h>
#include <vector>
#include <chrono>
#include <random>

#include "schubfach/schubfach_i.hpp"
#include "schubfach_xjb/schubfach_xjb_i.hpp"
#include "dragonbox/dragonbox_i.hpp"
#include "ryu/ryu_i.hpp"
#include "teju/teju_i.hpp"
#include "yy/yy_i.hpp"//contain xjb_f64_to_dec

const int N = 5e7;
const int M = 8;

double *data;
unsigned long long *dec;
int *e10;
// dec * 10^e10

// N=1e8 all memory size = 14e8 * 8 + 7e8 * 4 = 140e8 = 1.4e10 byte = 13.03GB
// N=5e7 all memory size = 6.5GB
// if size too large , please change N.

std::vector<std::pair<std::string, void (*)(double, unsigned long long *, int *)>> algorithm_set;

std::random_device rd;
std::mt19937_64 gen(rd());

// unsigned long long get_cycle() // x86 ,gcc
// {
//     uint64_t low, high;
//     __asm volatile("rdtsc" : "=a"(low), "=d"(high));
//     return (high << 32) | low;
// }

unsigned long long getns()
{
    auto now = std::chrono::high_resolution_clock::now();
    auto nanos = std::chrono::duration_cast<std::chrono::nanoseconds>(now.time_since_epoch()).count();
    return nanos;
}
double gen_double_filter_Nan_Inf()
{
    unsigned long long rnd;
    do
        rnd = gen() & ((1ull << 63) - 1); // abs
    while (rnd >= (0x7ffull << 52)); // nan or inf
    // while ((  (rnd & ((1ull << 63) - 1)) >= (0x7ffull << 52)) || (  (rnd & ((1ull << 63) - 1)) < (1ull << 52)));//subnormal or nan of inf

    return *(double *)&rnd;
}
void init()
{
    auto t1 = getns();

    data = (double *)malloc(N * M * sizeof(double));
    dec = (unsigned long long *)malloc(N * M * sizeof(unsigned long long));
    e10 = (int *)malloc(N * M * sizeof(int));

    // #pragma omp parallel for
    for (int i = 0; i < (N * M); ++i)
    {
        data[i] = gen_double_filter_Nan_Inf();
    }
    printf("generate random data finish\n");

    memset(&dec[0], 0, N * M * sizeof(unsigned long long));
    memset(&e10[0], 0, N * M * sizeof(int));

    algorithm_set.clear();

    algorithm_set.push_back({std::string("schubfach"), schubfach_f64_to_dec});
    algorithm_set.push_back({std::string("schubfach_xjb"), schubfach_xjb_f64_to_dec});
    algorithm_set.push_back({std::string("dragonbox"), dragonbox_f64_to_dec});
    algorithm_set.push_back({std::string("ryu"), ryu_f64_to_dec});
    algorithm_set.push_back({std::string("teju"), teju_f64_to_dec});
    algorithm_set.push_back({std::string("yy_fast"), yy_fast_f64_to_dec});
    algorithm_set.push_back({std::string("yy_full"), yy_full_f64_to_dec});
    algorithm_set.push_back({std::string("xjb"), xjb_f64_to_dec});

    auto t2 = getns();
    printf("init : cost %lf second\n", (t2 - t1) / 1e9);
}

void bench_impl(int i)
{
    std::string name = algorithm_set[i].first;
    void (*func)(double, unsigned long long *, int *) = algorithm_set[i].second;
    unsigned long long *dec_p = &dec[i * N];
    int *e10_p = &e10[i * N];
    printf("%d. bench %14s : ", i, name.c_str());

    auto t1 = getns();

    // This method has additional overhead,
    // which affects the test results to some extent,
    // so this method is not used.
    // for(int j=0;j<N;++j)func(data[j],&dec_p[j],&e10_p[j]);

    if (i == 0)for (int j = 0; j < N; ++j)schubfach_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    if (i == 1)for (int j = 0; j < N; ++j)schubfach_xjb_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    if (i == 2)for (int j = 0; j < N; ++j)dragonbox_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    if (i == 3)for (int j = 0; j < N; ++j)ryu_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    if (i == 4)for (int j = 0; j < N; ++j)teju_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    if (i == 5)for (int j = 0; j < N; ++j)yy_fast_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    if (i == 6)for (int j = 0; j < N; ++j)yy_full_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    if (i == 7)for (int j = 0; j < N; ++j)xjb_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);

    auto t2 = getns();
    printf("cost %4.4lf ms,every double cost %2.4lf ns\n", (t2 - t1) / 1e6, (t2 - t1) * (1.0 / N));
}

void bench()
{
    printf("bench start\n");
    for (int i = 0; i < algorithm_set.size(); ++i)
    {
        bench_impl(i);
    }
    printf("bench end\n");
}

unsigned check_xjb_and_schubfach_xjb(double d)
{
    unsigned long long dec,dec_xjb;
    int e10,e10_xjb;
    schubfach_xjb_f64_to_dec(d,&dec,&e10);
    xjb_f64_to_dec(d,&dec_xjb,&e10_xjb);
    if(!(dec==dec_xjb&&e10==e10_xjb)){
        return 1;
    }
    return 0;
}

void check_subnormal()
{
    unsigned error_sum=0;
    const unsigned long NUM = 1<<30;
    for(unsigned long i=0;i<NUM;++i)
    {
        u64 rnd = gen() & ((1ull<<52) - 1);
        double d = *(double*)&rnd;
        error_sum += check_xjb_and_schubfach_xjb(d);
    }
    if(error_sum==0){
        printf("check_subnormal ok\n");
    }else{
        printf("check_subnormal fail error sum = %u\n",error_sum);
    }
}
void check_float()
{
    // not contain subnormal float
    // because subnormal float convert to double , it will be 0.
    unsigned error_sum = 0;
    for(u32 i=0x00800000u;i<=0x7F7FFFFFu;++i)
    {
        float f = *(float*)&i;
        double d=f;// convert float to double 
        error_sum += check_xjb_and_schubfach_xjb(d);
    }
    if(error_sum==0){
        printf("check_float ok\n");
    }else{
        printf("check_float fail error sum = %u\n",error_sum);
    }
}
void check_irregular()
{
    unsigned error_sum=0;
    for(u64 exp = 1; exp <= 2046;++exp)
    {
        u64 num = exp << 52;
        double d = *(double*)&num;
        error_sum += check_xjb_and_schubfach_xjb(d);
    }
    if(error_sum==0){
        printf("check_irregular ok\n");
    }else{
        printf("check_irregular fail error sum = %u\n",error_sum);
    }
}
void check_all()
{
    unsigned error_sum=0;
    const unsigned long NUM = 1<<30;
    for(unsigned long i=0;i<NUM;++i)
    {
        double d = gen_double_filter_Nan_Inf();
        error_sum += check_xjb_and_schubfach_xjb(d);
    }
    if(error_sum==0){
        printf("check_all ok\n");
    }else{
        printf("check_all fail error sum = %u\n",error_sum);
    }
}

void check()
{
    printf("\ncheck start , may cost long time , please wait\n");
    printf("<=== check xjb algorithm ; use schubfach_xjb for correct result ===>\n");
    check_subnormal();
    check_float();
    check_irregular();
    check_all();
    printf("check finish\n");
}
int main()
{
    init();
    bench();
    check();

    printf("exit main\n");
    return 0;
}