; This library defines window_*_click_subscribe functions

38 b5 0c 46 05 46 ?4 04 49 ?4 ?4 00 eb 85 10 {
	proc window_set_click_context
}

70 b5 0e 46 05 46 ?4 0a 49 04 46 {
	proc window_single_click_subscribe
}

70 b5 04 46 0e 46 15 46 ?4 05 49 ?4 34 b1 {
	proc window_single_repeating_click_subscribe
}

2d e9 f0 41 1d 46 0c 46 17 46 06 46 ?4 12 49 80 46 {
	proc window_multi_click_subscribe
}

f8 b5 05 46 0c 46 17 46 1e 46 ?4 08 49 ?4 55 b1 {
	proc window_long_click_subscribe
} 

2d e9 f0 41 04 46 0e 46 17 46 1d 46 ?4 0a 49 {
	proc window_raw_click_subscribe
}
