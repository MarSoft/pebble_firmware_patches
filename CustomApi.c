//#include <pebble.h>
#include <stdarg.h>

void* (*dict_write_end_my)(void*, uint32_t, uint32_t, uint32_t, va_list) = dict_write_end;

void* call_custom_proc(uint32_t addr, uint32_t signature, ...) {
	va_list arglist;
	void *ret;

	va_start(arglist, signature);
	ret = dict_write_end_my(0, 1, addr, signature, arglist);
	va_end(arglist);

	return ret;
}
