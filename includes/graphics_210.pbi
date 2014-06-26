; This file defines (some) graphics functions
; for 2.1 firmware
#define ver 210

#ifndef _graphics_h
#define _graphics_h

90 f8 26 30 61 f3 83 03  80 f8 26 30 70 47 {
	proc graphics_context_set_fill_color
}

90 f8 26 30 61 f3 05 13  80 f8 26 30 70 47 {
	proc graphics_context_set_text_color
}

90 f8 27 30 61 f3 02 03  80 f8 27 30 70 47 {
	proc graphics_context_set_compositing_mode
}

10 b5 84 b0 02 ac 84 e8  06 00 94 e8 06 00 {
	proc graphics_fill_rect
}

82 B0 F0 B5 0E 46 91 B0 {
	proc graphics_draw_text
}

#endif
