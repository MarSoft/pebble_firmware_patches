; This file is "api description" file.
; It is intended for being #included
; from other patches, to provide ready signature
; for them to use.
#define ver 200

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

; Used internally. Disabled by default.
;
; usage:
; R0: loglevel (0=info, 1=error)
; R1: filename
; R2: line
; R3: format
;
; To read these logs, use following:
; $ pebble repl
; >>> pebble._send_message("LOGS", b"\x00\xFE")
08 b4 f0 b5 0f 4d 86 b0 {
	proc log
}


#endif ; _applog_h
