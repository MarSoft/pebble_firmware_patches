; This library defines window_*_click_subscribe functions

; R0: button_id
; R1: context
38 b5 0c 46 05 46 ?4 04 49 ?4 ?4 00 eb 85 10 {
	proc window_set_click_context
}

; R0: button_id
; R1: click_handler
70 b5 0e 46 05 46 ?4 0a 49 04 46 {
	proc window_single_click_subscribe
}

; R0: button_id
; R1: repeat_interval_ms
; R2: click_handler
70 b5 04 46 0e 46 15 46 ?4 05 49 ?4 34 b1 {
	proc window_single_repeating_click_subscribe
}

; R0: button_id
; R1: min_clicks
; R2: max_clicks
; R3: timeout
; arg0: last_click_only
; arg1: click_handler
2d e9 f0 41 1d 46 0c 46 17 46 06 46 ?4 12 49 80 46 {
	proc window_multi_click_subscribe
}

; R0: button_id
; R1: delay_ms
; R2: down_handler
; R3: up_handler
f8 b5 05 46 0c 46 17 46 1e 46 ?4 08 49 ?4 55 b1 {
	proc window_long_click_subscribe
} 

; R0: button_id
; R1: down_handler
; R2: up_handler
; R3: context
f8 b5 04 46 0e 46 17 46 1d 46 ?4 08 49 {
	proc window_raw_click_subscribe
}
