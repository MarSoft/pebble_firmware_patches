//#include <pebble.h>
#include <stdarg.h>

// If you want to use this,
// you'll have to compile with CFLAGS=-Wno-error

#pragma GCC diagnostic push
//#pragma GCC diagnostic ignored "-Werror" // does not work
typedef void* (*my_dwe)(void*, uint32_t, uint32_t, uint32_t, va_list);

void* call_custom_proc(uint32_t addr, uint32_t signature, ...) {
	va_list arglist;
	void *ret;

	va_start(arglist, signature);
	ret = ((my_dwe)dict_write_end)(0, 1, addr, signature, arglist);
	va_end(arglist);

	return ret;
}
#pragma GCC diagnostic pop
