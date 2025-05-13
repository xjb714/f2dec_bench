#include "generated/ieee64_with_uint128.c"


void teju_f64_to_dec(double v,unsigned long long* dec,int *e10)
{
    unsigned long  vi = *(unsigned  long*)&v;
    unsigned long  sig = vi & ((1ull<<52) - 1);
    unsigned long  exp = (vi>>52) & 2047;

    unsigned long sig_bin,exp_bin;
    if( __glibc_likely(exp) )
    {
        sig_bin = sig | (1ull<<52);
        exp_bin = exp - 1075;
    } 
    else
    {
        sig_bin = sig;
        exp_bin = -1074;
    }
    teju_fields_t binary;
    binary.mantissa = sig_bin;
    binary.exponent = exp_bin;

    teju_fields_t res = teju_function( binary) ;

    *dec = res.mantissa; 
    *e10 = res.exponent;
}
