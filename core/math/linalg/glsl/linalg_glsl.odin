// core:math/linalg/glsl implements a GLSL-like mathematics library plus numerous other utility procedures
package math_linalg_glsl

import "core:builtin"

TAU          :: 6.28318530717958647692528676655900576
PI           :: 3.14159265358979323846264338327950288
E            :: 2.71828182845904523536
τ :: TAU
π :: PI
e :: E

SQRT_TWO     :: 1.41421356237309504880168872420969808
SQRT_THREE   :: 1.73205080756887729352744634150587236
SQRT_FIVE    :: 2.23606797749978969640917366873127623

LN2          :: 0.693147180559945309417232121458176568
LN10         :: 2.30258509299404568401799145468436421

F32_EPSILON :: 1e-7

mat2 :: distinct matrix[2, 2]f32
mat3 :: distinct matrix[3, 3]f32
mat4 :: distinct matrix[4, 4]f32
mat2x2 :: mat2
mat3x3 :: mat3
mat4x4 :: mat4

// Should this be renamed the other way around?
mat3x2 :: distinct matrix[2, 3]f32
mat4x2 :: distinct matrix[2, 4]f32
mat2x3 :: distinct matrix[3, 2]f32
mat4x3 :: distinct matrix[3, 4]f32
mat2x4 :: distinct matrix[4, 2]f32
mat3x4 :: distinct matrix[4, 3]f32

vec2 :: distinct [2]f32
vec3 :: distinct [3]f32
vec4 :: distinct [4]f32

ivec2 :: distinct [2]i32
ivec3 :: distinct [3]i32
ivec4 :: distinct [4]i32

uvec2 :: distinct [2]u32
uvec3 :: distinct [3]u32
uvec4 :: distinct [4]u32

bvec2 :: distinct [2]bool
bvec3 :: distinct [3]bool
bvec4 :: distinct [4]bool

quat :: distinct quaternion128

cos :: proc{
	cos_f32,
	cos_vec2,
	cos_vec3,
	cos_vec4,
}
cos_vec2 :: proc "c" (x: vec2) -> vec2 { return {cos(x.x), cos(x.y)} }
cos_vec3 :: proc "c" (x: vec3) -> vec3 { return {cos(x.x), cos(x.y), cos(x.z)} }
cos_vec4 :: proc "c" (x: vec4) -> vec4 { return {cos(x.x), cos(x.y), cos(x.z), cos(x.w)} }


sin :: proc{
	sin_f32,
	sin_vec2,
	sin_vec3,
	sin_vec4,
}
sin_vec2 :: proc "c" (x: vec2) -> vec2 { return {sin(x.x), sin(x.y)} }
sin_vec3 :: proc "c" (x: vec3) -> vec3 { return {sin(x.x), sin(x.y), sin(x.z)} }
sin_vec4 :: proc "c" (x: vec4) -> vec4 { return {sin(x.x), sin(x.y), sin(x.z), sin(x.w)} }


tan :: proc{
	tan_f32,
	tan_vec2,
	tan_vec3,
	tan_vec4,
}
tan_vec2 :: proc "c" (x: vec2) -> vec2 { return {tan(x.x), tan(x.y)} }
tan_vec3 :: proc "c" (x: vec3) -> vec3 { return {tan(x.x), tan(x.y), tan(x.z)} }
tan_vec4 :: proc "c" (x: vec4) -> vec4 { return {tan(x.x), tan(x.y), tan(x.z), tan(x.w)} }


acos :: proc{
	acos_f32,
	acos_vec2,
	acos_vec3,
	acos_vec4,
}
acos_vec2 :: proc "c" (x: vec2) -> vec2 { return {acos(x.x), acos(x.y)} }
acos_vec3 :: proc "c" (x: vec3) -> vec3 { return {acos(x.x), acos(x.y), acos(x.z)} }
acos_vec4 :: proc "c" (x: vec4) -> vec4 { return {acos(x.x), acos(x.y), acos(x.z), acos(x.w)} }


asin :: proc{
	asin_f32,
	asin_vec2,
	asin_vec3,
	asin_vec4,
}
asin_vec2 :: proc "c" (x: vec2) -> vec2 { return {asin(x.x), asin(x.y)} }
asin_vec3 :: proc "c" (x: vec3) -> vec3 { return {asin(x.x), asin(x.y), asin(x.z)} }
asin_vec4 :: proc "c" (x: vec4) -> vec4 { return {asin(x.x), asin(x.y), asin(x.z), asin(x.w)} }


atan :: proc{
	atan_f32,
	atan_vec2,
	atan_vec3,
	atan_vec4,
	atan2_f32,
	atan2_vec2,
	atan2_vec3,
	atan2_vec4,
}
atan_vec2 :: proc "c" (x: vec2) -> vec2 { return {atan(x.x), atan(x.y)} }
atan_vec3 :: proc "c" (x: vec3) -> vec3 { return {atan(x.x), atan(x.y), atan(x.z)} }
atan_vec4 :: proc "c" (x: vec4) -> vec4 { return {atan(x.x), atan(x.y), atan(x.z), atan(x.w)} }


atan2 :: proc{
	atan2_f32,
	atan2_vec2,
	atan2_vec3,
	atan2_vec4,
}
atan2_vec2 :: proc "c" (y, x: vec2) -> vec2 { return {atan2(y.x, x.x), atan2(y.y, x.y)} }
atan2_vec3 :: proc "c" (y, x: vec3) -> vec3 { return {atan2(y.x, x.x), atan2(y.y, x.y), atan2(y.z, x.z)} }
atan2_vec4 :: proc "c" (y, x: vec4) -> vec4 { return {atan2(y.x, x.x), atan2(y.y, x.y), atan2(y.z, x.z), atan2(y.w, x.w)} }



cosh :: proc{
	cosh_f32,
	cosh_vec2,
	cosh_vec3,
	cosh_vec4,
}
cosh_vec2 :: proc "c" (x: vec2) -> vec2 { return {cosh(x.x), cosh(x.y)} }
cosh_vec3 :: proc "c" (x: vec3) -> vec3 { return {cosh(x.x), cosh(x.y), cosh(x.z)} }
cosh_vec4 :: proc "c" (x: vec4) -> vec4 { return {cosh(x.x), cosh(x.y), cosh(x.z), cosh(x.w)} }


sinh :: proc{
	sinh_f32,
	sinh_vec2,
	sinh_vec3,
	sinh_vec4,
}
sinh_vec2 :: proc "c" (x: vec2) -> vec2 { return {sinh(x.x), sinh(x.y)} }
sinh_vec3 :: proc "c" (x: vec3) -> vec3 { return {sinh(x.x), sinh(x.y), sinh(x.z)} }
sinh_vec4 :: proc "c" (x: vec4) -> vec4 { return {sinh(x.x), sinh(x.y), sinh(x.z), sinh(x.w)} }


tanh :: proc{
	tanh_f32,
	tanh_vec2,
	tanh_vec3,
	tanh_vec4,
}
tanh_vec2 :: proc "c" (x: vec2) -> vec2 { return {tanh(x.x), tanh(x.y)} }
tanh_vec3 :: proc "c" (x: vec3) -> vec3 { return {tanh(x.x), tanh(x.y), tanh(x.z)} }
tanh_vec4 :: proc "c" (x: vec4) -> vec4 { return {tanh(x.x), tanh(x.y), tanh(x.z), tanh(x.w)} }


acosh :: proc{
	acosh_f32,
	acosh_vec2,
	acosh_vec3,
	acosh_vec4,
}
acosh_vec2 :: proc "c" (x: vec2) -> vec2 { return {acosh(x.x), acosh(x.y)} }
acosh_vec3 :: proc "c" (x: vec3) -> vec3 { return {acosh(x.x), acosh(x.y), acosh(x.z)} }
acosh_vec4 :: proc "c" (x: vec4) -> vec4 { return {acosh(x.x), acosh(x.y), acosh(x.z), acosh(x.w)} }


asinh :: proc{
	asinh_f32,
	asinh_vec2,
	asinh_vec3,
	asinh_vec4,
}
asinh_vec2 :: proc "c" (x: vec2) -> vec2 { return {asinh(x.x), asinh(x.y)} }
asinh_vec3 :: proc "c" (x: vec3) -> vec3 { return {asinh(x.x), asinh(x.y), asinh(x.z)} }
asinh_vec4 :: proc "c" (x: vec4) -> vec4 { return {asinh(x.x), asinh(x.y), asinh(x.z), asinh(x.w)} }


atanh :: proc{
	atanh_f32,
	atanh_vec2,
	atanh_vec3,
	atanh_vec4,
}
atanh_vec2 :: proc "c" (x: vec2) -> vec2 { return {atanh(x.x), atanh(x.y)} }
atanh_vec3 :: proc "c" (x: vec3) -> vec3 { return {atanh(x.x), atanh(x.y), atanh(x.z)} }
atanh_vec4 :: proc "c" (x: vec4) -> vec4 { return {atanh(x.x), atanh(x.y), atanh(x.z), atanh(x.w)} }


sqrt :: proc{
	sqrt_f32,
	sqrt_vec2,
	sqrt_vec3,
	sqrt_vec4,
}
sqrt_vec2 :: proc "c" (x: vec2) -> vec2 { return {sqrt(x.x), sqrt(x.y)} }
sqrt_vec3 :: proc "c" (x: vec3) -> vec3 { return {sqrt(x.x), sqrt(x.y), sqrt(x.z)} }
sqrt_vec4 :: proc "c" (x: vec4) -> vec4 { return {sqrt(x.x), sqrt(x.y), sqrt(x.z), sqrt(x.w)} }


rsqrt :: inversesqrt
inversesqrt :: proc{
	inversesqrt_f32,
	inversesqrt_vec2,
	inversesqrt_vec3,
	inversesqrt_vec4,
}
inversesqrt_vec2 :: proc "c" (x: vec2) -> vec2 { return {inversesqrt(x.x), inversesqrt(x.y)} }
inversesqrt_vec3 :: proc "c" (x: vec3) -> vec3 { return {inversesqrt(x.x), inversesqrt(x.y), inversesqrt(x.z)} }
inversesqrt_vec4 :: proc "c" (x: vec4) -> vec4 { return {inversesqrt(x.x), inversesqrt(x.y), inversesqrt(x.z), inversesqrt(x.w)} }



pow :: proc{
	pow_f32,
	pow_vec2,
	pow_vec3,
	pow_vec4,
}
pow_vec2 :: proc "c" (x, y: vec2) -> vec2 { return {pow(x.x, y.x), pow(x.y, y.y)} }
pow_vec3 :: proc "c" (x, y: vec3) -> vec3 { return {pow(x.x, y.x), pow(x.y, y.y), pow(x.z, y.z)} }
pow_vec4 :: proc "c" (x, y: vec4) -> vec4 { return {pow(x.x, y.x), pow(x.y, y.y), pow(x.z, y.z), pow(x.w, y.w)} }


exp :: proc{
	exp_f32,
	exp_vec2,
	exp_vec3,
	exp_vec4,
}
exp_vec2 :: proc "c" (x: vec2) -> vec2 { return {exp(x.x), exp(x.y)} }
exp_vec3 :: proc "c" (x: vec3) -> vec3 { return {exp(x.x), exp(x.y), exp(x.z)} }
exp_vec4 :: proc "c" (x: vec4) -> vec4 { return {exp(x.x), exp(x.y), exp(x.z), exp(x.w)} }


log :: proc{
	log_f32,
	log_vec2,
	log_vec3,
	log_vec4,
}
log_vec2 :: proc "c" (x: vec2) -> vec2 { return {log(x.x), log(x.y)} }
log_vec3 :: proc "c" (x: vec3) -> vec3 { return {log(x.x), log(x.y), log(x.z)} }
log_vec4 :: proc "c" (x: vec4) -> vec4 { return {log(x.x), log(x.y), log(x.z), log(x.w)} }


exp2 :: proc{
	exp2_f32,
	exp2_vec2,
	exp2_vec3,
	exp2_vec4,
}
exp2_vec2 :: proc "c" (x: vec2) -> vec2 { return {exp2(x.x), exp2(x.y)} }
exp2_vec3 :: proc "c" (x: vec3) -> vec3 { return {exp2(x.x), exp2(x.y), exp2(x.z)} }
exp2_vec4 :: proc "c" (x: vec4) -> vec4 { return {exp2(x.x), exp2(x.y), exp2(x.z), exp2(x.w)} }


sign :: proc{
	sign_i32,
	sign_u32,
	sign_f32,
	sign_vec2,
	sign_vec3,
	sign_vec4,
	sign_ivec2,
	sign_ivec3,
	sign_ivec4,
	sign_uvec2,
	sign_uvec3,
	sign_uvec4,
}
sign_i32 :: proc "c" (x: i32) -> i32 { return -1 if x < 0 else +1 if x > 0 else 0 }
sign_u32 :: proc "c" (x: u32) -> u32 { return +1 if x > 0 else 0 }
sign_vec2 :: proc "c" (x: vec2) -> vec2 { return {sign(x.x), sign(x.y)} }
sign_vec3 :: proc "c" (x: vec3) -> vec3 { return {sign(x.x), sign(x.y), sign(x.z)} }
sign_vec4 :: proc "c" (x: vec4) -> vec4 { return {sign(x.x), sign(x.y), sign(x.z), sign(x.w)} }
sign_ivec2 :: proc "c" (x: ivec2) -> ivec2 { return {sign(x.x), sign(x.y)} }
sign_ivec3 :: proc "c" (x: ivec3) -> ivec3 { return {sign(x.x), sign(x.y), sign(x.z)} }
sign_ivec4 :: proc "c" (x: ivec4) -> ivec4 { return {sign(x.x), sign(x.y), sign(x.z), sign(x.w)} }
sign_uvec2 :: proc "c" (x: uvec2) -> uvec2 { return {sign(x.x), sign(x.y)} }
sign_uvec3 :: proc "c" (x: uvec3) -> uvec3 { return {sign(x.x), sign(x.y), sign(x.z)} }
sign_uvec4 :: proc "c" (x: uvec4) -> uvec4 { return {sign(x.x), sign(x.y), sign(x.z), sign(x.w)} }

floor :: proc{
	floor_f32,
	floor_vec2,
	floor_vec3,
	floor_vec4,
}
floor_vec2 :: proc "c" (x: vec2) -> vec2 { return {floor(x.x), floor(x.y)} }
floor_vec3 :: proc "c" (x: vec3) -> vec3 { return {floor(x.x), floor(x.y), floor(x.z)} }
floor_vec4 :: proc "c" (x: vec4) -> vec4 { return {floor(x.x), floor(x.y), floor(x.z), floor(x.w)} }


ceil :: proc{
	ceil_f32,
	ceil_vec2,
	ceil_vec3,
	ceil_vec4,
}
ceil_vec2 :: proc "c" (x: vec2) -> vec2 { return {ceil(x.x), ceil(x.y)} }
ceil_vec3 :: proc "c" (x: vec3) -> vec3 { return {ceil(x.x), ceil(x.y), ceil(x.z)} }
ceil_vec4 :: proc "c" (x: vec4) -> vec4 { return {ceil(x.x), ceil(x.y), ceil(x.z), ceil(x.w)} }


mod :: proc{
	mod_f32,
	mod_vec2,
	mod_vec3,
	mod_vec4,
}
mod_vec2 :: proc "c" (x, y: vec2) -> vec2 { return {mod(x.x, y.x), mod(x.y, y.y)} }
mod_vec3 :: proc "c" (x, y: vec3) -> vec3 { return {mod(x.x, y.x), mod(x.y, y.y), mod(x.z, y.z)} }
mod_vec4 :: proc "c" (x, y: vec4) -> vec4 { return {mod(x.x, y.x), mod(x.y, y.y), mod(x.z, y.z), mod(x.w, y.w)} }


fract :: proc{
	fract_f32,
	fract_vec2,
	fract_vec3,
	fract_vec4,
}
fract_vec2 :: proc "c" (x: vec2) -> vec2 { return {fract(x.x), fract(x.y)} }
fract_vec3 :: proc "c" (x: vec3) -> vec3 { return {fract(x.x), fract(x.y), fract(x.z)} }
fract_vec4 :: proc "c" (x: vec4) -> vec4 { return {fract(x.x), fract(x.y), fract(x.z), fract(x.w)} }



radians :: proc{
	radians_f32,
	radians_vec2,
	radians_vec3,
	radians_vec4,
}
radians_f32  :: proc "c" (degrees: f32)  -> f32  { return degrees * TAU / 360.0 }
radians_vec2 :: proc "c" (degrees: vec2) -> vec2 { return degrees * TAU / 360.0 }
radians_vec3 :: proc "c" (degrees: vec3) -> vec3 { return degrees * TAU / 360.0 }
radians_vec4 :: proc "c" (degrees: vec4) -> vec4 { return degrees * TAU / 360.0 }


degrees :: proc{
	degrees_f32,
	degrees_vec2,
	degrees_vec3,
	degrees_vec4,
}
degrees_f32  :: proc "c" (radians: f32)  -> f32  { return radians * 360.0 / TAU }
degrees_vec2 :: proc "c" (radians: vec2) -> vec2 { return radians * 360.0 / TAU }
degrees_vec3 :: proc "c" (radians: vec3) -> vec3 { return radians * 360.0 / TAU }
degrees_vec4 :: proc "c" (radians: vec4) -> vec4 { return radians * 360.0 / TAU }


min :: proc{
	min_i32,  
	min_u32,  
	min_f32,  
	min_vec2, 
	min_vec3, 
	min_vec4, 
	min_ivec2,
	min_ivec3,
	min_ivec4,
	min_uvec2,
	min_uvec3,
	min_uvec4,
}
min_i32  :: proc "c" (x, y: i32) -> i32   { return builtin.min(x, y) }
min_u32  :: proc "c" (x, y: u32) -> u32   { return builtin.min(x, y) }
min_f32  :: proc "c" (x, y: f32) -> f32   { return builtin.min(x, y) }
min_vec2 :: proc "c" (x, y: vec2) -> vec2 { return {min(x.x, y.x), min(x.y, y.y)} }
min_vec3 :: proc "c" (x, y: vec3) -> vec3 { return {min(x.x, y.x), min(x.y, y.y), min(x.z, y.z)} }
min_vec4 :: proc "c" (x, y: vec4) -> vec4 { return {min(x.x, y.x), min(x.y, y.y), min(x.z, y.z), min(x.w, y.w)} }
min_ivec2 :: proc "c" (x, y: ivec2) -> ivec2 { return {min(x.x, y.x), min(x.y, y.y)} }
min_ivec3 :: proc "c" (x, y: ivec3) -> ivec3 { return {min(x.x, y.x), min(x.y, y.y), min(x.z, y.z)} }
min_ivec4 :: proc "c" (x, y: ivec4) -> ivec4 { return {min(x.x, y.x), min(x.y, y.y), min(x.z, y.z), min(x.w, y.w)} }
min_uvec2 :: proc "c" (x, y: uvec2) -> uvec2 { return {min(x.x, y.x), min(x.y, y.y)} }
min_uvec3 :: proc "c" (x, y: uvec3) -> uvec3 { return {min(x.x, y.x), min(x.y, y.y), min(x.z, y.z)} }
min_uvec4 :: proc "c" (x, y: uvec4) -> uvec4 { return {min(x.x, y.x), min(x.y, y.y), min(x.z, y.z), min(x.w, y.w)} }


max :: proc{
	max_i32,  
	max_u32,  
	max_f32,  
	max_vec2, 
	max_vec3, 
	max_vec4, 
	max_ivec2,
	max_ivec3,
	max_ivec4,
	max_uvec2,
	max_uvec3,
	max_uvec4,
}
max_i32  :: proc "c" (x, y: i32) -> i32   { return builtin.max(x, y) }
max_u32  :: proc "c" (x, y: u32) -> u32   { return builtin.max(x, y) }
max_f32  :: proc "c" (x, y: f32) -> f32   { return builtin.max(x, y) }
max_vec2 :: proc "c" (x, y: vec2) -> vec2 { return {max(x.x, y.x), max(x.y, y.y)} }
max_vec3 :: proc "c" (x, y: vec3) -> vec3 { return {max(x.x, y.x), max(x.y, y.y), max(x.z, y.z)} }
max_vec4 :: proc "c" (x, y: vec4) -> vec4 { return {max(x.x, y.x), max(x.y, y.y), max(x.z, y.z), max(x.w, y.w)} }
max_ivec2 :: proc "c" (x, y: ivec2) -> ivec2 { return {max(x.x, y.x), max(x.y, y.y)} }
max_ivec3 :: proc "c" (x, y: ivec3) -> ivec3 { return {max(x.x, y.x), max(x.y, y.y), max(x.z, y.z)} }
max_ivec4 :: proc "c" (x, y: ivec4) -> ivec4 { return {max(x.x, y.x), max(x.y, y.y), max(x.z, y.z), max(x.w, y.w)} }
max_uvec2 :: proc "c" (x, y: uvec2) -> uvec2 { return {max(x.x, y.x), max(x.y, y.y)} }
max_uvec3 :: proc "c" (x, y: uvec3) -> uvec3 { return {max(x.x, y.x), max(x.y, y.y), max(x.z, y.z)} }
max_uvec4 :: proc "c" (x, y: uvec4) -> uvec4 { return {max(x.x, y.x), max(x.y, y.y), max(x.z, y.z), max(x.w, y.w)} }



clamp :: proc{
	clamp_i32, 
	clamp_u32, 
	clamp_f32,  
	clamp_vec2, 
	clamp_vec3, 
	clamp_vec4, 
	clamp_ivec2,
	clamp_ivec3,
	clamp_ivec4,
	clamp_uvec2,
	clamp_uvec3,
	clamp_uvec4,
}
clamp_i32  :: proc "c" (x, y, z: i32) -> i32   { return builtin.clamp(x, y, z) }
clamp_u32  :: proc "c" (x, y, z: u32) -> u32   { return builtin.clamp(x, y, z) }
clamp_f32  :: proc "c" (x, y, z: f32) -> f32   { return builtin.clamp(x, y, z) }
clamp_vec2 :: proc "c" (x, y, z: vec2) -> vec2 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y)} }
clamp_vec3 :: proc "c" (x, y, z: vec3) -> vec3 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y), clamp(x.z, y.z, z.z)} }
clamp_vec4 :: proc "c" (x, y, z: vec4) -> vec4 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y), clamp(x.z, y.z, z.z), clamp(x.w, y.w, z.w)} }
clamp_ivec2 :: proc "c" (x, y, z: ivec2) -> ivec2 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y)} }
clamp_ivec3 :: proc "c" (x, y, z: ivec3) -> ivec3 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y), clamp(x.z, y.z, z.z)} }
clamp_ivec4 :: proc "c" (x, y, z: ivec4) -> ivec4 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y), clamp(x.z, y.z, z.z), clamp(x.w, y.w, z.w)} }
clamp_uvec2 :: proc "c" (x, y, z: uvec2) -> uvec2 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y)} }
clamp_uvec3 :: proc "c" (x, y, z: uvec3) -> uvec3 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y), clamp(x.z, y.z, z.z)} }
clamp_uvec4 :: proc "c" (x, y, z: uvec4) -> uvec4 { return {clamp(x.x, y.x, z.x), clamp(x.y, y.y, z.y), clamp(x.z, y.z, z.z), clamp(x.w, y.w, z.w)} }

saturate :: proc{
	saturate_i32,
	saturate_u32,
	saturate_f32,
	saturate_vec2,
	saturate_vec3,
	saturate_vec4,
	saturate_ivec2,
	saturate_ivec3,
	saturate_ivec4,
	saturate_uvec2,
	saturate_uvec3,
	saturate_uvec4,
}
saturate_i32  :: proc "c" (x, y, z: i32) -> i32   { return builtin.clamp(x, 0, 1) }
saturate_u32  :: proc "c" (x, y, z: u32) -> u32   { return builtin.clamp(x, 0, 1) }
saturate_f32  :: proc "c" (x, y, z: f32) -> f32   { return builtin.clamp(x, 0, 1) }
saturate_vec2 :: proc "c" (x, y, z: vec2) -> vec2 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1)} }
saturate_vec3 :: proc "c" (x, y, z: vec3) -> vec3 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1), builtin.clamp(x.z, 0, 1)} }
saturate_vec4 :: proc "c" (x, y, z: vec4) -> vec4 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1), builtin.clamp(x.z, 0, 1), builtin.clamp(x.w, 0, 1)} }
saturate_ivec2 :: proc "c" (x, y, z: ivec2) -> ivec2 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1)} }
saturate_ivec3 :: proc "c" (x, y, z: ivec3) -> ivec3 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1), builtin.clamp(x.z, 0, 1)} }
saturate_ivec4 :: proc "c" (x, y, z: ivec4) -> ivec4 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1), builtin.clamp(x.z, 0, 1), builtin.clamp(x.w, 0, 1)} }
saturate_uvec2 :: proc "c" (x, y, z: uvec2) -> uvec2 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1)} }
saturate_uvec3 :: proc "c" (x, y, z: uvec3) -> uvec3 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1), builtin.clamp(x.z, 0, 1)} }
saturate_uvec4 :: proc "c" (x, y, z: uvec4) -> uvec4 { return {builtin.clamp(x.x, 0, 1), builtin.clamp(x.y, 0, 1), builtin.clamp(x.z, 0, 1), builtin.clamp(x.w, 0, 1)} }


mix :: proc{
	mix_f32,
	mix_vec2,
	mix_vec3,
	mix_vec4,
}
mix_f32  :: proc "c" (x, y, t: f32) -> f32   { return x*(1-t) + y*t }
mix_vec2 :: proc "c" (x, y, t: vec2) -> vec2 { return {mix(x.x, y.x, t.x), mix(x.y, y.y, t.y)} }
mix_vec3 :: proc "c" (x, y, t: vec3) -> vec3 { return {mix(x.x, y.x, t.x), mix(x.y, y.y, t.y), mix(x.z, y.z, t.z)} }
mix_vec4 :: proc "c" (x, y, t: vec4) -> vec4 { return {mix(x.x, y.x, t.x), mix(x.y, y.y, y.y), mix(x.z, y.z, t.z), mix(x.w, y.w, t.w)} }

lerp :: proc{
	lerp_f32,
	lerp_vec2,
	lerp_vec3,
	lerp_vec4,
}
lerp_f32  :: proc "c" (x, y, t: f32) -> f32   { return x*(1-t) + y*t }
lerp_vec2 :: proc "c" (x, y, t: vec2) -> vec2 { return {lerp(x.x, y.x, t.x), lerp(x.y, y.y, t.y)} }
lerp_vec3 :: proc "c" (x, y, t: vec3) -> vec3 { return {lerp(x.x, y.x, t.x), lerp(x.y, y.y, t.y), lerp(x.z, y.z, t.z)} }
lerp_vec4 :: proc "c" (x, y, t: vec4) -> vec4 { return {lerp(x.x, y.x, t.x), lerp(x.y, y.y, y.y), lerp(x.z, y.z, t.z), lerp(x.w, y.w, t.w)} }


step :: proc{
	step_f32,
	step_vec2,
	step_vec3,
	step_vec4,
}
step_f32  :: proc "c" (edge, x: f32) -> f32   { return 0 if x < edge else 1 }
step_vec2 :: proc "c" (edge, x: vec2) -> vec2 { return {step(edge.x, x.x), step(edge.y, x.y)} }
step_vec3 :: proc "c" (edge, x: vec3) -> vec3 { return {step(edge.x, x.x), step(edge.y, x.y), step(edge.z, x.z)} }
step_vec4 :: proc "c" (edge, x: vec4) -> vec4 { return {step(edge.x, x.x), step(edge.y, x.y), step(edge.z, x.z), step(edge.w, x.w)} }


abs :: proc{
	abs_i32,
	abs_u32,
	abs_f32,
	abs_vec2,
	abs_vec3,
	abs_vec4,
	abs_ivec2,
	abs_ivec3,
	abs_ivec4,
	abs_uvec2,
	abs_uvec3,
	abs_uvec4,
}
abs_i32  :: proc "c" (x: i32)  -> i32  { return builtin.abs(x) }
abs_u32  :: proc "c" (x: u32)  -> u32  { return x }
abs_f32  :: proc "c" (x: f32)  -> f32  { return builtin.abs(x) }
abs_vec2 :: proc "c" (x: vec2) -> vec2 { return {abs(x.x), abs(x.y)} }
abs_vec3 :: proc "c" (x: vec3) -> vec3 { return {abs(x.x), abs(x.y), abs(x.z)} }
abs_vec4 :: proc "c" (x: vec4) -> vec4 { return {abs(x.x), abs(x.y), abs(x.z), abs(x.w)} }
abs_ivec2 :: proc "c" (x: ivec2) -> ivec2 { return {abs(x.x), abs(x.y)} }
abs_ivec3 :: proc "c" (x: ivec3) -> ivec3 { return {abs(x.x), abs(x.y), abs(x.z)} }
abs_ivec4 :: proc "c" (x: ivec4) -> ivec4 { return {abs(x.x), abs(x.y), abs(x.z), abs(x.w)} }
abs_uvec2 :: proc "c" (x: uvec2) -> uvec2 { return x }
abs_uvec3 :: proc "c" (x: uvec3) -> uvec3 { return x }
abs_uvec4 :: proc "c" (x: uvec4) -> uvec4 { return x }

dot :: proc{
	dot_i32,
	dot_u32,
	dot_f32,
	dot_vec2,
	dot_vec3,
	dot_vec4,
	dot_ivec2,
	dot_ivec3,
	dot_ivec4,
	dot_uvec2,
	dot_uvec3,
	dot_uvec4,
	dot_quat,
}
dot_i32  :: proc "c" (a, b: i32)  -> i32 { return a*b }
dot_u32  :: proc "c" (a, b: u32)  -> u32 { return a*b }
dot_f32  :: proc "c" (a, b: f32)  -> f32 { return a*b }
dot_vec2 :: proc "c" (a, b: vec2) -> f32 { return a.x*b.x + a.y*b.y }
dot_vec3 :: proc "c" (a, b: vec3) -> f32 { return a.x*b.x + a.y*b.y + a.z*b.z }
dot_vec4 :: proc "c" (a, b: vec4) -> f32 { return a.x*b.x + a.y*b.y + a.z*b.z + a.w*b.w }
dot_ivec2 :: proc "c" (a, b: ivec2) -> i32 { return a.x*b.x + a.y*b.y }
dot_ivec3 :: proc "c" (a, b: ivec3) -> i32 { return a.x*b.x + a.y*b.y + a.z*b.z }
dot_ivec4 :: proc "c" (a, b: ivec4) -> i32 { return a.x*b.x + a.y*b.y + a.z*b.z + a.w*b.w }
dot_uvec2 :: proc "c" (a, b: uvec2) -> u32 { return a.x*b.x + a.y*b.y }
dot_uvec3 :: proc "c" (a, b: uvec3) -> u32 { return a.x*b.x + a.y*b.y + a.z*b.z }
dot_uvec4 :: proc "c" (a, b: uvec4) -> u32 { return a.x*b.x + a.y*b.y + a.z*b.z + a.w*b.w }
dot_quat :: proc "c" (a, b: quat) -> f32 { return a.x*b.x + a.y*b.y + a.z*b.z + a.w*b.w }

length :: proc{
	length_f32,
	length_vec2,
	length_vec3,
	length_vec4,
	length_quat,
}
length_f32  :: proc "c" (x: f32)  -> f32 { return builtin.abs(x) }
length_vec2 :: proc "c" (x: vec2) -> f32 { return sqrt(x.x*x.x + x.y*x.y) }
length_vec3 :: proc "c" (x: vec3) -> f32 { return sqrt(x.x*x.x + x.y*x.y + x.z*x.z) }
length_vec4 :: proc "c" (x: vec4) -> f32 { return sqrt(x.x*x.x + x.y*x.y + x.z*x.z + x.w*x.w) }
length_quat :: proc "c" (x: quat) -> f32 { return sqrt(x.x*x.x + x.y*x.y + x.z*x.z + x.w*x.w) }


distance :: proc{
	distance_f32,
	distance_vec2,
	distance_vec3,
	distance_vec4,
}
distance_f32  :: proc "c" (x, y: f32)  -> f32 { return length(y-x) }
distance_vec2 :: proc "c" (x, y: vec2) -> f32 { return length(y-x) }
distance_vec3 :: proc "c" (x, y: vec3) -> f32 { return length(y-x) }
distance_vec4 :: proc "c" (x, y: vec4) -> f32 { return length(y-x) }


cross :: proc{
	cross_vec3,
	cross_ivec3,
}

cross_vec3 :: proc "c" (a, b: vec3) -> (c: vec3) {
	c.x = a.y*b.z - b.y*a.z
	c.y = a.z*b.x - b.z*a.x
	c.z = a.x*b.y - b.x*a.y
	return
}
cross_ivec3 :: proc "c" (a, b: ivec3) -> (c: ivec3) {
	c.x = a.y*b.z - b.y*a.z
	c.y = a.z*b.x - b.z*a.x
	c.z = a.x*b.y - b.x*a.y
	return
}

normalize :: proc{
	normalize_f32,
	normalize_vec2,
	normalize_vec3,
	normalize_vec4,
	normalize_quat,
}
normalize_f32  :: proc "c" (x: f32)  -> f32  { return 1.0 }
normalize_vec2 :: proc "c" (x: vec2) -> vec2 { return x / length(x) }
normalize_vec3 :: proc "c" (x: vec3) -> vec3 { return x / length(x) }
normalize_vec4 :: proc "c" (x: vec4) -> vec4 { return x / length(x) }
normalize_quat :: proc "c" (x: quat) -> quat { return x / quat(length(x)) }


faceForward :: proc{
	faceForward_f32,
	faceForward_vec2,
	faceForward_vec3,
	faceForward_vec4,
}
faceForward_f32  :: proc "c" (N, I, Nref: f32)  -> f32  { return N if dot(I, Nref) < 0 else -N }
faceForward_vec2 :: proc "c" (N, I, Nref: vec2) -> vec2 { return N if dot(I, Nref) < 0 else -N }
faceForward_vec3 :: proc "c" (N, I, Nref: vec3) -> vec3 { return N if dot(I, Nref) < 0 else -N }
faceForward_vec4 :: proc "c" (N, I, Nref: vec4) -> vec4 { return N if dot(I, Nref) < 0 else -N }


reflect :: proc{
	reflect_f32,
	reflect_vec2,
	reflect_vec3,
	reflect_vec4,
}
reflect_f32  :: proc "c" (I, N: f32)  -> f32  { return I - 2*N*dot(N, I) }
reflect_vec2 :: proc "c" (I, N: vec2) -> vec2 { return I - 2*N*dot(N, I) }
reflect_vec3 :: proc "c" (I, N: vec3) -> vec3 { return I - 2*N*dot(N, I) }
reflect_vec4 :: proc "c" (I, N: vec4) -> vec4 { return I - 2*N*dot(N, I) }



refract :: proc{
	refract_f32,
	refract_vec2,
	refract_vec3,
	refract_vec4,
}
refract_f32  :: proc "c" (i, n, eta: f32) -> f32 { 
	cosi := dot(-i, n)
	cost2 := 1 - eta*eta*(1 - cosi*cosi)
	t := eta*i + ((eta*cosi - sqrt(abs(cost2))) * n)
	return t * f32(i32(cost2 > 0))
}
refract_vec2  :: proc "c" (i, n, eta: vec2) -> vec2 { 
	cosi := dot(-i, n)
	cost2 := 1 - eta*eta*(1 - cosi*cosi)
	t := eta*i + ((eta*cosi - sqrt(abs(cost2))) * n)
	return t * vec2{f32(i32(cost2.x > 0)), f32(i32(cost2.y > 0))}
}
refract_vec3  :: proc "c" (i, n, eta: vec3) -> vec3 { 
	cosi := dot(-i, n)
	cost2 := 1 - eta*eta*(1 - cosi*cosi)
	t := eta*i + ((eta*cosi - sqrt(abs(cost2))) * n)
	return t * vec3{f32(i32(cost2.x > 0)), f32(i32(cost2.y > 0)), f32(i32(cost2.z > 0))}
}
refract_vec4  :: proc "c" (i, n, eta: vec4) -> vec4 { 
	cosi := dot(-i, n)
	cost2 := 1 - eta*eta*(1 - cosi*cosi)
	t := eta*i + ((eta*cosi - sqrt(abs(cost2))) * n)
	return t * vec4{f32(i32(cost2.x > 0)), f32(i32(cost2.y > 0)), f32(i32(cost2.z > 0)), f32(i32(cost2.w > 0))}
}

scalarTripleProduct :: proc "c" (a, b, c: vec3) -> f32  { return dot(a, cross(b, c)) }
vectorTripleProduct :: proc "c" (a, b, c: vec3) -> vec3 { return cross(a, cross(b, c)) }


// Vector Relational Procedures

lessThan :: proc{
	lessThan_f32,
	lessThan_i32,
	lessThan_u32,
	lessThan_vec2,
	lessThan_ivec2,
	lessThan_uvec2,
	lessThan_vec3,
	lessThan_ivec3,
	lessThan_uvec3,
	lessThan_vec4,
	lessThan_ivec4,
	lessThan_uvec4,
}
lessThan_f32   :: proc "c" (a, b: f32) -> bool { return a < b }
lessThan_i32   :: proc "c" (a, b: i32) -> bool { return a < b }
lessThan_u32   :: proc "c" (a, b: u32) -> bool { return a < b }
lessThan_vec2  :: proc "c" (a, b: vec2) -> bvec2 { return {a.x < b.x, a.y < b.y} }
lessThan_ivec2 :: proc "c" (a, b: ivec2) -> bvec2 { return {a.x < b.x, a.y < b.y} }
lessThan_uvec2 :: proc "c" (a, b: uvec2) -> bvec2 { return {a.x < b.x, a.y < b.y} }
lessThan_vec3  :: proc "c" (a, b: vec3) -> bvec3 { return {a.x < b.x, a.y < b.y, a.z < b.z} }
lessThan_ivec3 :: proc "c" (a, b: ivec3) -> bvec3 { return {a.x < b.x, a.y < b.y, a.z < b.z} }
lessThan_uvec3 :: proc "c" (a, b: uvec3) -> bvec3 { return {a.x < b.x, a.y < b.y, a.z < b.z} }
lessThan_vec4  :: proc "c" (a, b: vec4) -> bvec4 { return {a.x < b.x, a.y < b.y, a.z < b.z, a.w < b.w} }
lessThan_ivec4 :: proc "c" (a, b: ivec4) -> bvec4 { return {a.x < b.x, a.y < b.y, a.z < b.z, a.w < b.w} }
lessThan_uvec4 :: proc "c" (a, b: uvec4) -> bvec4 { return {a.x < b.x, a.y < b.y, a.z < b.z, a.w < b.w} }


lessThanEqual :: proc{
	lessThanEqual_f32,
	lessThanEqual_i32,
	lessThanEqual_u32,
	lessThanEqual_vec2,
	lessThanEqual_ivec2,
	lessThanEqual_uvec2,
	lessThanEqual_vec3,
	lessThanEqual_ivec3,
	lessThanEqual_uvec3,
	lessThanEqual_vec4,
	lessThanEqual_ivec4,
	lessThanEqual_uvec4,
}
lessThanEqual_f32   :: proc "c" (a, b: f32) -> bool { return a <= b }
lessThanEqual_i32   :: proc "c" (a, b: i32) -> bool { return a <= b }
lessThanEqual_u32   :: proc "c" (a, b: u32) -> bool { return a <= b }
lessThanEqual_vec2  :: proc "c" (a, b: vec2) -> bvec2 { return {a.x <= b.x, a.y <= b.y} }
lessThanEqual_ivec2 :: proc "c" (a, b: ivec2) -> bvec2 { return {a.x <= b.x, a.y <= b.y} }
lessThanEqual_uvec2 :: proc "c" (a, b: uvec2) -> bvec2 { return {a.x <= b.x, a.y <= b.y} }
lessThanEqual_vec3  :: proc "c" (a, b: vec3) -> bvec3 { return {a.x <= b.x, a.y <= b.y, a.z <= b.z} }
lessThanEqual_ivec3 :: proc "c" (a, b: ivec3) -> bvec3 { return {a.x <= b.x, a.y <= b.y, a.z <= b.z} }
lessThanEqual_uvec3 :: proc "c" (a, b: uvec3) -> bvec3 { return {a.x <= b.x, a.y <= b.y, a.z <= b.z} }
lessThanEqual_vec4  :: proc "c" (a, b: vec4) -> bvec4 { return {a.x <= b.x, a.y <= b.y, a.z <= b.z, a.w <= b.w} }
lessThanEqual_ivec4 :: proc "c" (a, b: ivec4) -> bvec4 { return {a.x <= b.x, a.y <= b.y, a.z <= b.z, a.w <= b.w} }
lessThanEqual_uvec4 :: proc "c" (a, b: uvec4) -> bvec4 { return {a.x <= b.x, a.y <= b.y, a.z <= b.z, a.w <= b.w} }


greaterThan :: proc{
	greaterThan_f32,
	greaterThan_i32,
	greaterThan_u32,
	greaterThan_vec2,
	greaterThan_ivec2,
	greaterThan_uvec2,
	greaterThan_vec3,
	greaterThan_ivec3,
	greaterThan_uvec3,
	greaterThan_vec4,
	greaterThan_ivec4,
	greaterThan_uvec4,
}
greaterThan_f32   :: proc "c" (a, b: f32) -> bool { return a > b }
greaterThan_i32   :: proc "c" (a, b: i32) -> bool { return a > b }
greaterThan_u32   :: proc "c" (a, b: u32) -> bool { return a > b }
greaterThan_vec2  :: proc "c" (a, b: vec2) -> bvec2 { return {a.x > b.x, a.y > b.y} }
greaterThan_ivec2 :: proc "c" (a, b: ivec2) -> bvec2 { return {a.x > b.x, a.y > b.y} }
greaterThan_uvec2 :: proc "c" (a, b: uvec2) -> bvec2 { return {a.x > b.x, a.y > b.y} }
greaterThan_vec3  :: proc "c" (a, b: vec3) -> bvec3 { return {a.x > b.x, a.y > b.y, a.z > b.z} }
greaterThan_ivec3 :: proc "c" (a, b: ivec3) -> bvec3 { return {a.x > b.x, a.y > b.y, a.z > b.z} }
greaterThan_uvec3 :: proc "c" (a, b: uvec3) -> bvec3 { return {a.x > b.x, a.y > b.y, a.z > b.z} }
greaterThan_vec4  :: proc "c" (a, b: vec4) -> bvec4 { return {a.x > b.x, a.y > b.y, a.z > b.z, a.w > b.w} }
greaterThan_ivec4 :: proc "c" (a, b: ivec4) -> bvec4 { return {a.x > b.x, a.y > b.y, a.z > b.z, a.w > b.w} }
greaterThan_uvec4 :: proc "c" (a, b: uvec4) -> bvec4 { return {a.x > b.x, a.y > b.y, a.z > b.z, a.w > b.w} }


greaterThanEqual :: proc{
	greaterThanEqual_f32,
	greaterThanEqual_i32,
	greaterThanEqual_u32,
	greaterThanEqual_vec2,
	greaterThanEqual_ivec2,
	greaterThanEqual_uvec2,
	greaterThanEqual_vec3,
	greaterThanEqual_ivec3,
	greaterThanEqual_uvec3,
	greaterThanEqual_vec4,
	greaterThanEqual_ivec4,
	greaterThanEqual_uvec4,
}
greaterThanEqual_f32   :: proc "c" (a, b: f32) -> bool { return a >= b }
greaterThanEqual_i32   :: proc "c" (a, b: i32) -> bool { return a >= b }
greaterThanEqual_u32   :: proc "c" (a, b: u32) -> bool { return a >= b }
greaterThanEqual_vec2  :: proc "c" (a, b: vec2) -> bvec2 { return {a.x >= b.x, a.y >= b.y} }
greaterThanEqual_ivec2 :: proc "c" (a, b: ivec2) -> bvec2 { return {a.x >= b.x, a.y >= b.y} }
greaterThanEqual_uvec2 :: proc "c" (a, b: uvec2) -> bvec2 { return {a.x >= b.x, a.y >= b.y} }
greaterThanEqual_vec3  :: proc "c" (a, b: vec3) -> bvec3 { return {a.x >= b.x, a.y >= b.y, a.z >= b.z} }
greaterThanEqual_ivec3 :: proc "c" (a, b: ivec3) -> bvec3 { return {a.x >= b.x, a.y >= b.y, a.z >= b.z} }
greaterThanEqual_uvec3 :: proc "c" (a, b: uvec3) -> bvec3 { return {a.x >= b.x, a.y >= b.y, a.z >= b.z} }
greaterThanEqual_vec4  :: proc "c" (a, b: vec4) -> bvec4 { return {a.x >= b.x, a.y >= b.y, a.z >= b.z, a.w >= b.w} }
greaterThanEqual_ivec4 :: proc "c" (a, b: ivec4) -> bvec4 { return {a.x >= b.x, a.y >= b.y, a.z >= b.z, a.w >= b.w} }
greaterThanEqual_uvec4 :: proc "c" (a, b: uvec4) -> bvec4 { return {a.x >= b.x, a.y >= b.y, a.z >= b.z, a.w >= b.w} }


equal :: proc{
	equal_f32,
	equal_i32,
	equal_u32,
	equal_vec2,
	equal_ivec2,
	equal_uvec2,
	equal_vec3,
	equal_ivec3,
	equal_uvec3,
	equal_vec4,
	equal_ivec4,
	equal_uvec4,
}
equal_f32   :: proc "c" (a, b: f32) -> bool { return a == b }
equal_i32   :: proc "c" (a, b: i32) -> bool { return a == b }
equal_u32   :: proc "c" (a, b: u32) -> bool { return a == b }
equal_vec2  :: proc "c" (a, b: vec2) -> bvec2 { return {a.x == b.x, a.y == b.y} }
equal_ivec2 :: proc "c" (a, b: ivec2) -> bvec2 { return {a.x == b.x, a.y == b.y} }
equal_uvec2 :: proc "c" (a, b: uvec2) -> bvec2 { return {a.x == b.x, a.y == b.y} }
equal_vec3  :: proc "c" (a, b: vec3) -> bvec3 { return {a.x == b.x, a.y == b.y, a.z == b.z} }
equal_ivec3 :: proc "c" (a, b: ivec3) -> bvec3 { return {a.x == b.x, a.y == b.y, a.z == b.z} }
equal_uvec3 :: proc "c" (a, b: uvec3) -> bvec3 { return {a.x == b.x, a.y == b.y, a.z == b.z} }
equal_vec4  :: proc "c" (a, b: vec4) -> bvec4 { return {a.x == b.x, a.y == b.y, a.z == b.z, a.w == b.w} }
equal_ivec4 :: proc "c" (a, b: ivec4) -> bvec4 { return {a.x == b.x, a.y == b.y, a.z == b.z, a.w == b.w} }
equal_uvec4 :: proc "c" (a, b: uvec4) -> bvec4 { return {a.x == b.x, a.y == b.y, a.z == b.z, a.w == b.w} }

notEqual :: proc{
	notEqual_f32,
	notEqual_i32,
	notEqual_u32,
	notEqual_vec2,
	notEqual_ivec2,
	notEqual_uvec2,
	notEqual_vec3,
	notEqual_ivec3,
	notEqual_uvec3,
	notEqual_vec4,
	notEqual_ivec4,
	notEqual_uvec4,
}
notEqual_f32   :: proc "c" (a, b: f32) -> bool { return a != b }
notEqual_i32   :: proc "c" (a, b: i32) -> bool { return a != b }
notEqual_u32   :: proc "c" (a, b: u32) -> bool { return a != b }
notEqual_vec2  :: proc "c" (a, b: vec2) -> bvec2 { return {a.x != b.x, a.y != b.y} }
notEqual_ivec2 :: proc "c" (a, b: ivec2) -> bvec2 { return {a.x != b.x, a.y != b.y} }
notEqual_uvec2 :: proc "c" (a, b: uvec2) -> bvec2 { return {a.x != b.x, a.y != b.y} }
notEqual_vec3  :: proc "c" (a, b: vec3) -> bvec3 { return {a.x != b.x, a.y != b.y, a.z != b.z} }
notEqual_ivec3 :: proc "c" (a, b: ivec3) -> bvec3 { return {a.x != b.x, a.y != b.y, a.z != b.z} }
notEqual_uvec3 :: proc "c" (a, b: uvec3) -> bvec3 { return {a.x != b.x, a.y != b.y, a.z != b.z} }
notEqual_vec4  :: proc "c" (a, b: vec4) -> bvec4 { return {a.x != b.x, a.y != b.y, a.z != b.z, a.w != b.w} }
notEqual_ivec4 :: proc "c" (a, b: ivec4) -> bvec4 { return {a.x != b.x, a.y != b.y, a.z != b.z, a.w != b.w} }
notEqual_uvec4 :: proc "c" (a, b: uvec4) -> bvec4 { return {a.x != b.x, a.y != b.y, a.z != b.z, a.w != b.w} }


any :: proc{
	any_bool,
	any_bvec2,
	any_bvec3,
	any_bvec4,
}
any_bool  :: proc "c" (v: bool) -> bool  { return v }
any_bvec2 :: proc "c" (v: bvec2) -> bool { return v.x || v.y }
any_bvec3 :: proc "c" (v: bvec3) -> bool { return v.x || v.y || v.z }
any_bvec4 :: proc "c" (v: bvec4) -> bool { return v.x || v.y || v.z || v.w }

all :: proc{
	all_bool,
	all_bvec2,
	all_bvec3,
	all_bvec4,
}
all_bool  :: proc "c" (v: bool) -> bool  { return v }
all_bvec2 :: proc "c" (v: bvec2) -> bool { return v.x && v.y }
all_bvec3 :: proc "c" (v: bvec3) -> bool { return v.x && v.y && v.z }
all_bvec4 :: proc "c" (v: bvec4) -> bool { return v.x && v.y && v.z && v.w }

not :: proc{
	not_bool,
	not_bvec2,
	not_bvec3,
	not_bvec4,
}
not_bool  :: proc "c" (v: bool) -> bool { return !v }
not_bvec2 :: proc "c" (v: bvec2) -> bvec2 { return {!v.x, !v.y} }
not_bvec3 :: proc "c" (v: bvec3) -> bvec3 { return {!v.x, !v.y, !v.z} }
not_bvec4 :: proc "c" (v: bvec4) -> bvec4 { return {!v.x, !v.y, !v.z, !v.w} }



/// Matrix Utilities

identity :: proc "c" ($M: typeid/matrix[$N, N]f32) -> M { return 1 }

mat4Perspective :: proc "c" (fovy, aspect, near, far: f32) -> (m: mat4) {
	tan_half_fovy := tan(0.5 * fovy)
	m[0, 0] = 1 / (aspect*tan_half_fovy)
	m[1, 1] = 1 / (tan_half_fovy)
	m[2, 2] = -(far + near) / (far - near)
	m[3, 2] = -1
	m[2, 3] = -2*far*near / (far - near)
	return
}
mat4PerspectiveInfinite :: proc "c" (fovy, aspect, near: f32) -> (m: mat4) {
	tan_half_fovy := tan(0.5 * fovy)
	m[0, 0] = 1 / (aspect*tan_half_fovy)
	m[1, 1] = 1 / (tan_half_fovy)
	m[2, 2] = -1
	m[3, 2] = -1
	m[2, 3] = -2*near
	return
}
mat4Ortho3d :: proc "c" (left, right, bottom, top, near, far: f32) -> (m: mat4) {
	m[0, 0] = +2 / (right - left)
	m[1, 1] = +2 / (top - bottom)
	m[2, 2] = -2 / (far - near)
	m[0, 3] = -(right + left)   / (right - left)
	m[1, 3] = -(top   + bottom) / (top - bottom)
	m[2, 3] = -(far + near) / (far- near)
	m[3, 3] = 1
	return m
}


mat4LookAt :: proc "c" (eye, centre, up: vec3) -> (m: mat4) {
	f := normalize(centre - eye)
	s := normalize(cross(f, up))
	u := cross(s, f)

	fe := dot(f, eye)
	
	m[0] = {+s.x, +u.x, -f.x, 0}
	m[1] = {+s.y, +u.y, -f.y, 0}
	m[2] = {+s.z, +u.z, -f.z, 0}
	m[3] = {-dot(s, eye), -dot(u, eye), +fe, 1}
	return
	// return mat4{
	// 	+s.x, +s.y, +s.z, -dot(s, eye),
	// 	+u.x, +u.y, +u.z, -dot(u, eye),
	// 	-f.x, -f.y, -f.z, +fe,
	// 	0, 0, 0, 1,
	// }
}

mat4Rotate :: proc "c" (v: vec3, radians: f32) -> (rot: mat4) {
	c := cos(radians)
	s := sin(radians)

	a := normalize(v)
	t := a * (1-c)

	rot = 1

	rot[0, 0] = c + t[0]*a[0]
	rot[1, 0] = 0 + t[0]*a[1] + s*a[2]
	rot[2, 0] = 0 + t[0]*a[2] - s*a[1]
	rot[3, 0] = 0

	rot[0, 1] = 0 + t[1]*a[0] - s*a[2]
	rot[1, 1] = c + t[1]*a[1]
	rot[2, 1] = 0 + t[1]*a[2] + s*a[0]
	rot[3, 1] = 0

	rot[0, 2] = 0 + t[2]*a[0] + s*a[1]
	rot[1, 2] = 0 + t[2]*a[1] - s*a[0]
	rot[2, 2] = c + t[2]*a[2]
	rot[3, 2] = 0

	return rot
}

mat4Translate :: proc "c" (v: vec3) -> (m: mat4) {
	m = 1
	m[3].xyz = v.xyz
	return
}
mat4Scale :: proc "c" (v: vec3) -> (m: mat4) {
	m[0, 0] = v[0]
	m[1, 1] = v[1]
	m[2, 2] = v[2]
	m[3, 3] = 1
	return
}

mat4Orientation :: proc "c" (normal, up: vec3) -> mat4 {
	if normal == up {
		return 1
	}
	
	rotation_axis := cross(up, normal)
	angle := acos(dot(normal, up))
	
	return mat4Rotate(rotation_axis, angle)
}

mat4FromQuat :: proc "c" (q: quat) -> (m: mat4) {
	qxx := q.x * q.x
	qyy := q.y * q.y
	qzz := q.z * q.z
	qxz := q.x * q.z
	qxy := q.x * q.y
	qyz := q.y * q.z
	qwx := q.w * q.x
	qwy := q.w * q.y
	qwz := q.w * q.z

	m[0, 0] = 1 - 2 * (qyy + qzz)
	m[1, 0] = 2 * (qxy + qwz)
	m[2, 0] = 2 * (qxz - qwy)

	m[0, 1] = 2 * (qxy - qwz)
	m[1, 1] = 1 - 2 * (qxx + qzz)
	m[2, 1] = 2 * (qyz + qwx)

	m[0, 2] = 2 * (qxz + qwy)
	m[1, 2] = 2 * (qyz - qwx)
	m[2, 2] = 1 - 2 * (qxx + qyy)

	m[3, 3] = 1

	return
}

quatAxisAngle :: proc "c" (axis: vec3, radians: f32) -> (q: quat) {
	t := radians*0.5
	v := normalize(axis) * sin(t)
	q.x = v.x
	q.y = v.y
	q.z = v.z
	q.w = cos(t)
	return
}

quatDot :: proc "c" (a, b: quat) -> f32 {
	return dot(transmute(vec4)a, transmute(vec4)b)
}

quatNlerp :: proc "c" (a, b: quat, t: f32) -> (c: quat) {
	c.x = a.x + (b.x-a.x)*t
	c.y = a.y + (b.y-a.y)*t
	c.z = a.z + (b.z-a.z)*t
	c.w = a.w + (b.w-a.w)*t
	return c/builtin.abs(c)
}

quatSlerp :: proc "c" (x, y: quat, t: f32) -> (q: quat) {
	a, b := x, y
	cos_angle := quatDot(a, b)
	if cos_angle < 0 {
		b = -b
		cos_angle = -cos_angle
	}
	if cos_angle > 1 - F32_EPSILON {
		q.x = a.x + (b.x-a.x)*t
		q.y = a.y + (b.y-a.y)*t
		q.z = a.z + (b.z-a.z)*t
		q.w = a.w + (b.w-a.w)*t
		return
	}

	angle := acos(cos_angle)
	sin_angle := sin(angle)
	factor_a := sin((1-t) * angle) / sin_angle
	factor_b := sin(t * angle)     / sin_angle

	q.x = factor_a * a.x + factor_b * b.x
	q.y = factor_a * a.y + factor_b * b.y
	q.z = factor_a * a.z + factor_b * b.z
	q.w = factor_a * a.w + factor_b * b.w
	return
}

quatFromMat3 :: proc "c" (m: mat3) -> (q: quat) {
	four_x_squared_minus_1 := m[0, 0] - m[1, 1] - m[2, 2]
	four_y_squared_minus_1 := m[1, 1] - m[0, 0] - m[2, 2]
	four_z_squared_minus_1 := m[2, 2] - m[0, 0] - m[1, 1]
	four_w_squared_minus_1 := m[0, 0] + m[1, 1] + m[2, 2]

	biggest_index := 0
	four_biggest_squared_minus_1 := four_w_squared_minus_1
	if four_x_squared_minus_1 > four_biggest_squared_minus_1 {
		four_biggest_squared_minus_1 = four_x_squared_minus_1
		biggest_index = 1
	}
	if four_y_squared_minus_1 > four_biggest_squared_minus_1 {
		four_biggest_squared_minus_1 = four_y_squared_minus_1
		biggest_index = 2
	}
	if four_z_squared_minus_1 > four_biggest_squared_minus_1 {
		four_biggest_squared_minus_1 = four_z_squared_minus_1
		biggest_index = 3
	}

	biggest_val := sqrt(four_biggest_squared_minus_1 + 1) * 0.5
	mult := 0.25 / biggest_val

	q = 1
	switch biggest_index {
	case 0:
		q.w = biggest_val
		q.x = (m[2, 1] - m[1, 2]) * mult
		q.y = (m[0, 2] - m[2, 0]) * mult
		q.z = (m[1, 0] - m[0, 1]) * mult
	case 1:
		q.w = (m[2, 1] - m[1, 2]) * mult
		q.x = biggest_val
		q.y = (m[1, 0] + m[0, 1]) * mult
		q.z = (m[0, 2] + m[2, 0]) * mult
	case 2:
		q.w = (m[0, 2] - m[2, 0]) * mult
		q.x = (m[1, 0] + m[0, 1]) * mult
		q.y = biggest_val
		q.z = (m[2, 1] + m[1, 2]) * mult
	case 3:
		q.w = (m[1, 0] - m[0, 1]) * mult
		q.x = (m[0, 2] + m[2, 0]) * mult
		q.y = (m[2, 1] + m[1, 2]) * mult
		q.z = biggest_val
	}
	return
}

quatFromMat4 :: proc "c" (m: mat4) -> (q: quat) {
	return quatFromMat3(mat3(m))
}

quatMulVec3 :: proc "c" (q: quat, v: vec3) -> vec3 {
	xyz := vec3{q.x, q.y, q.z}
	t := cross(xyz, v)
	return v + q.w*t + cross(xyz, t)
}

inverse_mat2 :: proc "c" (m: mat2) -> mat2 { return builtin.inverse(m) }
inverse_mat3 :: proc "c" (m: mat3) -> mat3 { return builtin.inverse(m) }
inverse_mat4 :: proc "c" (m: mat4) -> mat4 { return builtin.inverse(m) }
inverse_quat :: proc "c" (q: quat) -> quat { return 1/q }

inverse :: proc{
	inverse_mat2,
	inverse_mat3,
	inverse_mat4,
	inverse_quat,
}

transpose         :: builtin.transpose
inverse_transpose :: builtin.inverse_transpose
adjugate          :: builtin.adjugate
hermitian_adjoint :: builtin.hermitian_adjoint
minor             :: builtin.matrix_minor
determinant       :: builtin.determinant
trace             :: builtin.matrix_trace