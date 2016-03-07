#ifndef _vibes_h
#define _vibes_h

cf eb 10 00 @ ; disambig
07 b5 05 4a 92 e8 03 00
8d e8 03 00 ?4 03 b0
5d f8 04 fb
00 bf ?4
{
	proc vibes_short_pulse
}

cf eb 10 00 ; disambig
07 b5 05 4a 92 e8 03 00  8d e8 03 00 ?4
03 b0 5d f8 04 fb 00 bf ?4 @ ; here was short_pulse
07 b5 05 4a 92 e8 03 00  8d e8 03 00 ?4
03 b0 5d f8 04 fb 00 bf ?4
{
	proc vibes_long_pulse
}

cf eb 10 00 ; disambig
07 b5 05 4a 92 e8 03 00  8d e8 03 00 ?4
03 b0 5d f8 04 fb 00 bf ?4 ; here was short_pulse
07 b5 05 4a 92 e8 03 00  8d e8 03 00 ?4
03 b0 5d f8 04 fb 00 bf ?4 @ ; here was long_pulse
07 b5 05 4a 92 e8 03 00  8d e8 03 00 ?4
03 b0 5d f8 04 fb 00 bf ?4
{
	proc vibes_double_pulse
}

? b5 02 ab 03 e9 03 00  00 ? ? b1 00 24 {
	proc vibes_enqueue_custom_pattern
}

#endif
