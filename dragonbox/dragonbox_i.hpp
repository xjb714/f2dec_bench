//#include "dragonbox.cc"
//#include "format-inl.h"
//#include "fmt-12.1.0/include/fmt/format-inl.h"
#include "format.cc"


void dragonbox_f64_to_dec(double v,unsigned long long* dec,int *e10)
{
    // unsigned long  vi = *(unsigned  long*)&v;
    // unsigned long  sig = vi & ((1ull<<52) - 1);
    // unsigned long  exp = (vi & ((1ull<<63) - 1))>>52;
    
    // struct dragonbox_warp::FloatingDecimal64 res = dragonbox_warp::ToDecimal64(sig, exp);
    // *dec = res.significand;
    // *e10 = res.exponent;

    auto res = fmt::v12::detail::dragonbox::to_decimal<double>(v);
    *dec = res.significand;
    *e10 = res.exponent;
}