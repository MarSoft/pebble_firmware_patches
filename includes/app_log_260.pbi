; This file is "api description" file.
; It is intended for being #included
; from other patches, to provide ready signature
; for them to use.
#define ver 260

; this is classic c-style approach for unique-including
#ifndef _applog_h
#define _applog_h

; This is for app context
;
; usage:
; R0: loglevel,
; R1: char* filename,
; R2: line,
; R3: fmt
;
; Log levels:
; 1 = error, 50 = warning,
; 100 = info, 200 = debug, 255 = debug_verbose
08 b4 f0 b5 a6 b0 2b ac {
	proc app_log
}

; Helper procs to log a register
{
	global log_r0
	PUSH {LR,R0-R3}
	MOV R2, R0
	B cont

	global log_r1
	PUSH {LR,R0-R3}
	MOV R2,R1
	B cont

	global log_r3
	PUSH {LR,R0-R3}
	MOV R2,R3
	B cont

	global log_r2
	PUSH {LR,R0-R3}

	cont:
	MOV R0, 1
	ADR R1, str
	ADR R3, str
	BL app_log
	POP {PC,R0-R3}

	ALIGN 4
	str:
	DCB "Debug" 00
}

#endif ; _applog_h
