/*
 * CUB does not play well with NVRTC, comment system includes out aggressively and
 * patch things up here.
 */

#define CUB_NS_PREFIX
#define CUB_NS_POSTFIX

#define FLT_MIN     1.17549435E-38F
#define FLT_MAX     3.40282347E+38F
#define FLT_EPSILON 1.19209290E-07F

#define DBL_MIN    2.2250738585072014E-308
#define DBL_MAX    1.7976931348623157E+308
#define DBL_EPSILON 2.2204460492503131E-16

#include "util_macro.cuh"
#include "util_arch.cuh"
#include "util_type.cuh"
#include "util_ptx.cuh"
#include "thread/thread_operators.cuh"
//#include "block/block_exchange.cuh"
// #include "../../thread/thread_load.cuh"
// #include "../../thread/thread_store.cuh"
#include "warp/specializations/warp_reduce_shfl.cuh"
#include "warp/specializations/warp_reduce_smem.cuh"
