//#include <pebble.h>
#include <stdarg.h>

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wreturn-type"
//void* call_custom_proc(uint32_t addr, uint32_t signature, ...)
// We use another signature to avoid GCC inserting extra PUSH
void* call_custom_proc() {
	__asm(
		// R0: addr, R1: signature, others: arguments or "keep them safe"
		"PUSH {R2,R3};"
		"MOV R3, R1;"
		"MOV R2, R0;"
		"MOV R1, 1;" // group 1: custom proc
		"MOV R0, 0;" // invoke our proc
		"B.W dict_write_end;"
		// here we should POP, but we cannot:
		// if we want to use BL then we should save LR,
		// but we don't want to corrupt stack.
		// So POP is moved to firmware.
	);
}
#pragma GCC diagnostic pop

bool is_custom_api_available() {
	__asm(
		"MOV R0, 0;" // invoke our proc
		"MOV R1, 0;" // group 0: check availability
		"B.W dict_write_end;"
	);
	return false; // for GCC to be happy
}
