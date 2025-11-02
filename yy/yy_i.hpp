#include "yy_double.c"
#include "yyjson.c"

void yy_double_f64_to_dec(double v,unsigned long long* dec,int *e10)
{
    // src from yy_double.c
    unsigned long long  vi = *(unsigned  long long*)&v;
    unsigned long long sig = vi & ((1ull<<52) - 1);
    //unsigned long  exp = (vi>>52) & 2047;
    unsigned long long exp = (vi & (2047ull<<52) ) >> 52;

    unsigned long long sig_bin,exp_bin;
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

    yy_double_f64_bin_to_dec(sig_bin, exp_bin,(uint64_t*)dec,e10) ;
}
void yy_double_full_f64_to_dec(double v,unsigned long long* dec,int *e10)
{
    // src from yy_double.c
    unsigned long long  vi = *(unsigned  long long*)&v;
    unsigned long long sig = vi & ((1ull<<52) - 1);
    //unsigned long  exp = (vi>>52) & 2047;
    unsigned long long exp = (vi & (2047ull<<52) ) >> 52;

    unsigned long long sig_bin,exp_bin;
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

    yy_double_full_f64_bin_to_dec(sig_bin, exp_bin,(uint64_t*)dec,e10) ;
}

void yyjson_f64_to_dec(double v,unsigned long long* dec,int *e10)
{
    //src from yyjson.c
    unsigned long long vi = *(unsigned  long long*)&v;
    unsigned long long sig = vi & ((1ull<<52) - 1);
    //unsigned long long exp = (vi>>52) & 2047;
    unsigned long long exp = (vi & (2047ull<<52) ) >> 52;

    unsigned long long sig_bin,exp_bin;
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

    f64_bin_to_dec(sig, exp, sig_bin, exp_bin,(uint64_t*)dec,e10) ;
}
void yyjson_f32_to_dec(float v,unsigned int* dec,int *e10)
{
    //src from yyjson.c
    unsigned int  vi = *(unsigned  int*)&v;
    unsigned int  sig = vi & ((1ull<<23) - 1);
    //unsigned int  exp = (vi>>23) & 255;
    unsigned int  exp = (vi & (255u<<23) ) >> 23;

    unsigned int sig_bin,exp_bin;
    if( exp )[[likely]]
    {
        sig_bin = sig | (1ull<<23);
        exp_bin = exp - 150;
    } 
    else
    {
        sig_bin = sig;
        exp_bin = 1-150;
    }

    f32_bin_to_dec(sig, exp, sig_bin, exp_bin,(uint32_t*)dec,e10) ;
}