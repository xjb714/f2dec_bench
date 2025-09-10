#include "yy_double.c"

void yy_fast_f64_to_dec(double v,unsigned long long* dec,int *e10)
{
    unsigned long  vi = *(unsigned  long*)&v;
    unsigned long  sig = vi & ((1ull<<52) - 1);
    unsigned long  exp = (vi>>52) & 2047;

    unsigned long sig_bin,exp_bin;
    if( exp )[[likely]]
    {
        sig_bin = sig | (1ull<<52);
        exp_bin = exp - 1075;
    } 
    else
    {
        sig_bin = sig;
        exp_bin = -1074;
    }

    f64_bin_to_dec( sig_bin,exp_bin,(uint64_t*)dec,e10) ;
}
void yy_full_f64_to_dec(double v,unsigned long long* dec,int *e10)
{
    unsigned long  vi = *(unsigned  long*)&v;
    unsigned long  sig = vi & ((1ull<<52) - 1);
    unsigned long  exp = (vi>>52) & 2047;

    unsigned long sig_bin,exp_bin;
    if( exp )[[likely]]
    {
        sig_bin = sig | (1ull<<52);
        exp_bin = exp - 1075;
    } 
    else
    {
        sig_bin = sig;
        exp_bin = -1074;
    }

    f64_bin_to_dec_full( sig_bin,exp_bin,(uint64_t*)dec,e10) ;
}

// void xjb_f64_to_dec(double v,unsigned long long* dec,int *e10)
// {
//     unsigned long  vi = *(unsigned  long*)&v;
//     unsigned long  sig = vi & ((1ull<<52) - 1);
//     unsigned long  exp = (vi>>52) & 2047;

//     unsigned long sig_bin,exp_bin;
//     if( __glibc_likely(exp) )
//     {
//         sig_bin = sig | (1ull<<52);
//         exp_bin = exp - 1075;//max is 2046-1075=971
//     } 
//     else
//     {
//         sig_bin = sig;
//         exp_bin = -1074;//min is 1-1075=-1074 
//     }
//     //exp_bin : [-1074,971]
//     f64_bin_to_dec_xjb_v2( sig_bin,exp_bin,(uint64_t*)dec,e10) ;
// }