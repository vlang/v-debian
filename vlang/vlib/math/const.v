// Copyright (c) 2019-2020 Alexander Medvednikov. All rights reserved.
// Use of this source code is governed by an MIT license
// that can be found in the LICENSE file.
module math

pub const (
	e = 2.71828182845904523536028747135266249775724709369995957496696763
	pi = 3.14159265358979323846264338327950288419716939937510582097494459
	phi = 1.61803398874989484820458683436563811772030917980576286213544862
	tau = 6.28318530717958647692528676655900576839433879875021164194988918
	sqrt2 = 1.41421356237309504880168872420969807856967187537694807317667974
	sqrt_e = 1.64872127070012814684865078781416357165377610071014801157507931
	sqrt_pi = 1.77245385090551602729816748334114518279754945612238712821380779
	sqrt_tau = 2.50662827463100050241576528481104525300698674060993831662992357
	sqrt_phi = 1.27201964951406896425242246173749149171560804184009624861664038
	ln2 = 0.693147180559945309417232121458176568075500134360255254120680009
	log2_e = 1.0 / ln2
	ln10 = 2.30258509299404568401799145468436420760110148862877297603332790
	log10_e = 1.0 / ln10
)
// Floating-point limit values
// max is the largest finite value representable by the type.
// smallest_non_zero is the smallest positive, non-zero value representable by the type.
pub const (
	max_f32 = 3.40282346638528859811704183484516925440e+38 // 2**127 * (2**24 - 1) / 2**23
	smallest_non_zero_f32 = 1.401298464324817070923729583289916131280e-45 // 1 / 2**(127 - 1 + 23)
	max_f64 = 1.797693134862315708145274237317043567981e+308 // 2**1023 * (2**53 - 1) / 2**52
	smallest_non_zero_f64 = 4.940656458412465441765687928682213723651e-324 // 1 / 2**(1023 - 1 + 52)
)
// Integer limit values
pub const (
	max_i8 = 127
	min_i8 = -128
	max_i16 = 32767
	min_i16 = -32768
	max_i32 = 2147483647
	min_i32 = -2147483648
	// -9223372036854775808 is wrong because C compilers parse litteral values
	// without sign first, and 9223372036854775808 overflows i64, hence the
	// consecutive subtraction by 1
	min_i64 = i64(-9223372036854775807 - 1)
	max_i64 = i64(9223372036854775807)
	max_u8 = 255
	max_u16 = 65535
	max_u32 = u32(4294967295)
	max_u64 = u64(18446744073709551615)
)
