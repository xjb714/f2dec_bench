// Copyright 2020 Alexander Bolz
//
// Distributed under the Boost Software License, Version 1.0.
//  (See accompanying file LICENSE_1_0.txt or copy at https://www.boost.org/LICENSE_1_0.txt)

#pragma once

namespace schubfach {

// char* output_end = Dtoa(buffer, value);
//
// Converts the given double-precision number into decimal form and stores the result in the given
// buffer.
//
// The buffer must be large enough, i.e. >= DtoaMinBufferLength.
// The output format is similar to printf("%g").
// The output is _not_ null-terminted.
//
// The output is optimal, i.e. the output string
//  1. rounds back to the input number when read in (using round-to-nearest-even)
//  2. is as short as possible,
//  3. is as close to the input number as possible.
//
// Note:
// This function may temporarily write up to DtoaMinBufferLength characters into the buffer.

constexpr int DtoaMinBufferLength = 64;

char* Dtoa(char* buffer, double value);

} // namespace schubfach