#include <pebble.h>
#include <stdarg.h>

typedef void* (*my_dwe)(void*, uint32_t, uint32_t, uint32_t, va_list);

void* call_custom_proc(uint32_t addr, uint32_t signature, ...) {
	my_dwe dwe = (my_dwe)dict_write_end;
	va_list list;

	va_start(list, signature);

	dwe(0, 1, addr, signature, list);

	va_end(list);
	return NULL; // for GCC to not cry
}

bool is_custom_api_available() {
	__asm(
		"MOV R0, 0;" // invoke our proc
		"MOV R1, 0;" // group 0: check availability
		"B.W dict_write_end;"
	);
	return false; // for GCC to be happy
}
