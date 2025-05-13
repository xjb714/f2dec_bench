#include "d2s.c"


void ryu_f64_to_dec(double v,unsigned long long* dec,int *e10)
{
    unsigned long  vi = *(unsigned  long*)&v;
    unsigned long  sig = vi & ((1ull<<52) - 1);
    unsigned long  exp = (vi & ((1ull<<63) - 1))>>52;

    floating_decimal_64 res = d2d(sig, exp);
    
    *dec = res.mantissa;
    *e10 = res.exponent;
}