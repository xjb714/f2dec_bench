#include <stdio.h>
#include <vector>
#include <chrono>
#include <random>

#ifndef BENCH_DOUBLE
    #define BENCH_DOUBLE 1
#endif


#define BENCH_FLOAT !BENCH_DOUBLE


//double and float
#include "schubfach/schubfach_i.hpp"
#include "schubfach_xjb/schubfach_xjb_i.hpp"
#include "dragonbox/dragonbox_i.hpp"
#include "ryu/ryu_i.hpp"
#include "teju/teju_i.hpp"
#include "yy/yy_i.hpp"
#include "xjb/xjb64_i.hpp"
#include "ldouble/ldouble_i.hpp"
//#include "json/jnum.c"

//float
#include "xjb/xjb32_i.hpp"


const int N = 1e8;
const int N_float = 1e8; // float data size
const int M = 9;//double algorithm count
const int MF = 3;//float algorithm count

double *data;
unsigned long long *dec;
int *e10;
// dec * 10^e10

float *data_float;// all float data : [1 , ((0xff<<23)-1)]
unsigned int *dec_float;
int *e10_float;
// dec_float * 10^e10_float


// N=1e8 all memory size = 14e8 * 8 + 7e8 * 4 = 140e8 = 1.4e10 byte = 13.03GB
// N=5e7 all memory size = 6.5GB
// if size too large , please change N.

std::vector<std::pair<std::string, void (*)(double, unsigned long long *, int *)>> algorithm_set;//double
std::vector<std::pair<std::string, void (*)(float, unsigned int *, int *)>> algorithm_float_set;//float

std::random_device rd;
std::mt19937_64 gen(rd());

// unsigned long long get_cycle() // x86 , gcc
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
void init_double()
{
    auto t1 = getns();

    data = (double *)malloc(N  * sizeof(double));
    dec = (unsigned long long *)malloc(N  * sizeof(unsigned long long));
    e10 = (int *)malloc(N  * sizeof(int));

    // #pragma omp parallel for
    for (int i = 0; i < (N); ++i)
    {
        data[i] = gen_double_filter_Nan_Inf();
    }
    printf("generate random data finish\n");

    memset(&dec[0], 0, N  * sizeof(unsigned long long));
    memset(&e10[0], 0, N  * sizeof(int));

    algorithm_set.clear();

    algorithm_set.push_back({std::string("schubfach64"), schubfach_f64_to_dec});
    algorithm_set.push_back({std::string("schubfach64_xjb"), schubfach_xjb_f64_to_dec});
    algorithm_set.push_back({std::string("dragonbox"), dragonbox_f64_to_dec});
    algorithm_set.push_back({std::string("ryu64"), ryu_f64_to_dec});
    algorithm_set.push_back({std::string("teju"), teju_f64_to_dec});
    algorithm_set.push_back({std::string("yy_fast"), yy_fast_f64_to_dec});
    algorithm_set.push_back({std::string("yy_full"), yy_full_f64_to_dec});
    algorithm_set.push_back({std::string("xjb64"), xjb64_f64_to_dec});
    //algorithm_set.push_back({std::string("ldouble"), ldouble_f64_to_dec});

    auto t2 = getns();
    printf("init : cost %lf second\n", (t2 - t1) / 1e9);
}
void init_float()
{
    auto t1 = getns();
    const int N = N_float;
    data_float = (float *)malloc(N * sizeof(float));
    dec_float = (unsigned int *)malloc(N * sizeof(unsigned int));
    e10_float = (int *)malloc(N * sizeof(int));

    // #pragma omp parallel for
    for (int i = 0; i < N; ++i)
    {        
        // generate random float data : [1 , ((0xff<<23)-1)]
        unsigned int rnd;
        do rnd = gen() & ((1u << 31) - 1);
        while(rnd >= (0xffu << 23) || rnd == 0); // 0 or nan or inf
        data_float[i] = *(float *)&rnd;
    }
    printf("generate random float data finish\n");

    memset(&dec_float[0], 0, N * sizeof(unsigned int));
    memset(&e10_float[0], 0, N * sizeof(int));

    auto t2 = getns();
    printf("init float : cost %lf second\n", (t2 - t1) / 1e9);

    algorithm_float_set.clear();


    algorithm_float_set.push_back({std::string("xjb32"), xjb_f32_to_dec});
    algorithm_float_set.push_back({std::string("schubfach32_xjb"), schubfach_xjb_f32_to_dec});
    algorithm_float_set.push_back({std::string("schubfach32"), schubfach_f32_to_dec});
    // algorithm_float_set.push_back({std::string("schubfach_xjb"), schubfach_xjb_f64_to_dec});
    // algorithm_float_set.push_back({std::string("dragonbox"), dragonbox_f64_to_dec});
    algorithm_float_set.push_back({std::string("ryu32"), ryu_f32_to_dec});
    algorithm_float_set.push_back({std::string("teju32"), teju_f32_to_dec});
    // algorithm_float_set.push_back({std::string("yy_fast"), yy_fast_f64_to_dec});
    // algorithm_float_set.push_back({std::string("yy_full"), yy_full_f64_to_dec});
    // algorithm_float_set.push_back({std::string("xjb"), xjb_f64_to_dec});
    // algorithm_float_set.push_back({std::string("ldouble"), ldouble_f64_to_dec});

    printf("init float algorithm set finish\n");
}
void free_double(){
    if(data)free(data);
    if(dec)free(dec);
    if(e10)free(e10);
    data = nullptr;
    dec = nullptr;
    e10 = nullptr;
}
void free_float()
{
    if(data_float)free(data_float);
    if(dec_float)free(dec_float);
    if(e10_float)free(e10_float);
    data_float = nullptr;
    dec_float = nullptr;
    e10_float = nullptr;
}
void bench_double_single_impl(int i)
{
    std::string name = algorithm_set[i].first;
    void (*func)(double, unsigned long long *, int *) = algorithm_set[i].second;
    unsigned long long *dec_p = &dec[0];
    int *e10_p = &e10[0];
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
    if (i == 7)for (int j = 0; j < N; ++j)xjb64_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    //if (i == 8)for (int j = 0; j < N; ++j)ldouble_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);

    auto t2 = getns();
    for (int j = 0; j < N; ++j)
    {
        volatile unsigned int d = dec_p[j];
        volatile int e = e10_p[j];
        (void)d;
        (void)e;
    }
    printf("cost %4.4lf ms,every double cost %2.4lf ns\n", (t2 - t1) / 1e6, (t2 - t1) * (1.0 / N));
}
void bench_float_single_impl(int i)
{
    const int N = N_float;
    std::string name = algorithm_float_set[i].first;
    void (*func)(float, unsigned int *, int *) = algorithm_float_set[i].second;
    unsigned int *dec_p = &dec_float[0];
    int *e10_p = &e10_float[0];
    printf("%d. bench %14s : ", i, name.c_str());

    auto t1 = getns();

    // This method has additional overhead,
    // which affects the test results to some extent,
    // so this method is not used.
    // for(int j=0;j<N;++j)func(data[j],&dec_p[j],&e10_p[j]);

    if (i == 0)for (int j = 0; j < N; ++j)xjb_f32_to_dec(data_float[j], &dec_p[j], &e10_p[j]);
    if (i == 1)for (int j = 0; j < N; ++j)schubfach_xjb_f32_to_dec(data_float[j], &dec_p[j], &e10_p[j]);
    if (i == 2)for (int j = 0; j < N; ++j)schubfach_f32_to_dec(data_float[j], &dec_p[j], &e10_p[j]);
    if (i == 3)for (int j = 0; j < N; ++j)ryu_f32_to_dec(data_float[j], &dec_p[j], &e10_p[j]);
    if (i == 4)for (int j = 0; j < N; ++j)teju_f32_to_dec(data_float[j], &dec_p[j], &e10_p[j]);
    // if (i == 1)for (int j = 0; j < N; ++j)schubfach_xjb_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    // if (i == 2)for (int j = 0; j < N; ++j)dragonbox_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    // if (i == 3)for (int j = 0; j < N; ++j)ryu_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    // if (i == 4)for (int j = 0; j < N; ++j)teju_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    // if (i == 5)for (int j = 0; j < N; ++j)yy_fast_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    // if (i == 6)for (int j = 0; j < N; ++j)yy_full_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    // if (i == 7)for (int j = 0; j < N; ++j)xjb_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);
    // if (i == 8)for (int j = 0; j < N; ++j)ldouble_f64_to_dec(data[j], &dec_p[j], &e10_p[j]);

    auto t2 = getns();
    for (int j = 0; j < N; ++j)
    {
        volatile unsigned int d = dec_p[j];
        volatile int e = e10_p[j];
        (void)d;
        (void)e;
    }
    printf("cost %4.4lf ms,every float cost %2.4lf ns\n", (t2 - t1) / 1e6, (t2 - t1) * (1.0 / N));
}

void bench_double_all_algorithm()
{
    printf("bench double start\n");
    for (int i = 0; i < algorithm_set.size(); ++i)
    {
        bench_double_single_impl(i);
    }
    printf("bench double end\n");
}
void bench_float_all_algorithm()
{
    printf("bench float start\n");
    for (int i = 0; i < algorithm_float_set.size(); ++i)
    {
        bench_float_single_impl(i);
    }
    printf("bench float end\n");
}

unsigned check_xjb_and_schubfach_xjb(double d)
{
    unsigned long long dec,dec_xjb;
    int e10,e10_xjb;
    schubfach_xjb_f64_to_dec(d,&dec,&e10);
    schubfach_f64_to_dec(d,&dec_xjb,&e10_xjb);
    //xjb_f64_to_dec(d,&dec_xjb,&e10_xjb);
    if(!(dec==dec_xjb&&e10==e10_xjb)){
        return 1;
    }
    return 0;
}
// unsigned check_schubfach_xjb_126(double d)
// {
//     unsigned long long dec,dec_xjb;
//     int e10,e10_xjb;
//     schubfach_xjb_f64_to_dec(d,&dec,&e10);
//     schubfach_xjb_126_f64_to_dec(d,&dec_xjb,&e10_xjb);
//     //xjb_f64_to_dec(d,&dec_xjb,&e10_xjb);
//     if(!(dec==dec_xjb&&e10==e10_xjb)){
//         static unsigned sum=0;
//         printf("sum=%u,d = %.16le,e10=%d\n",sum++,d,e10);
//         return 1;
//     }
//     return 0;
// }

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
    unsigned error_sum = 0;
    const unsigned long NUM = 1<<30;//1e9
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
// void check_all_126()
// {
//     unsigned error_sum=0;
//     const unsigned long NUM = 1<<30;
//     for(unsigned long i=0;i<NUM;++i)
//     {
//         double d = gen_double_filter_Nan_Inf();
//         error_sum += check_schubfach_xjb_126(d);
//     }
//     if(error_sum==0){
//         printf("check_all ok\n");
//     }else{
//         printf("check_all fail error sum = %u\n",error_sum);
//     }
// }

void check()
{
    printf("\ncheck start , may cost long time , please wait\n");
    printf("<=== check xjb algorithm ; use schubfach_xjb for correct result ===>\n");
    check_subnormal();
    //check_float();// not contain subnormal float
    check_irregular();
    check_all();// random double 
    printf("check finish\n");
}

// void check_ldouble(){
//     while(1){
//         double v;
//         std::cin>>v;
//         unsigned long long sig_dec;
//         int exp_dec;
//         ldouble_f64_to_dec(v,&sig_dec,&exp_dec);
//         printf("ldouble v=%.16lg,sig=%llu,exp=%d\n",v,sig_dec,exp_dec);//max 16 digits

//         schubfach_xjb_f64_to_dec(v,&sig_dec,&exp_dec);
//         printf("sch_xjb v=%.16lg,sig=%llu,exp=%d\n",v,sig_dec,exp_dec);
        
//         //char buf[64];
//         //jnum_dtoa(v,buf);
//         //printf("buf = %s\n",buf);
//     }
// }
// void check_schubfach_irregular()
// {
//     unsigned error_sum=0;
//     for(u64 exp = 1; exp <= 2046;++exp)
//     {
//         u64 num = exp << 52;
//         //num+=3;
//         double d = *(double*)&num;
//         unsigned long long dec,dec_xjb;
//         int e10,e10_xjb;
//         schubfach_f64_to_dec(d,&dec,&e10);
//         //error_sum += check_xjb_and_schubfach_xjb(d);
//     }
//     // if(error_sum==0){
//     //     printf("check_irregular ok\n");
//     // }else{
//     //     printf("check_irregular fail error sum = %u\n",error_sum);
//     // }
// }
void bench_double()
{
    init_double();
    
    bench_double_all_algorithm();

    free_double();
}
void bench_float()
{
    init_float();

    bench_float_all_algorithm();

    free_float();
}
int main()
{

#if BENCH_FLOAT
    bench_float();
#endif

#if BENCH_DOUBLE
    bench_double();
    
    //check();
#endif


    //printf("exit main\n");

    return 0;
}