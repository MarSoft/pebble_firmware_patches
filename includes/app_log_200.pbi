; This file is "api description" file.
; It is intended for being #included
; from other patches, to provide ready signature
; for them to use.

; this is classic c-style approach for unique-including
#ifndef _applog_h
#define _applog_h

; usage:
; R0: loglevel,
; R1: char* filename,
; R2: line,
; R3: fmt
08 b4 f0 b5 a6 b0 2b ac {
	proc app_log
}

#endif ; _applog_h
