#include "schubfach_64.cc"



void schubfach_f64_to_dec(double v,unsigned long long* dec,int* e10){
    unsigned long  vi = *(unsigned  long*)&v;
    unsigned long  sig = vi & ((1ull<<52) - 1);
    unsigned long  exp = (vi & ((1ull<<63) - 1))>>52;

    FloatingDecimal64 res = ToDecimal64(sig, exp);
    *dec = res.digits;
    *e10 = res.exponent;
}