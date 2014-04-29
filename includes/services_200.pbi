; This file defines functions to work with services

; Some service IDs:
; 01. Accelerometer data
; 02. Accelerometer tap
; 03. Bluetooth connection
; 0B. AVRCP/audio info
; 0C. Tick timer
; 0E. Notifications
; 17. Battery state
; 1B. App focus

; R0: ptr to 16bytes: [0, 0, service_id, handler]
70 b5 04 46 ?4 21 46 05 46 ?4 {
	app_event_service_subscribe
}

; R0: ptr to 16bytes: [0, 0, service_id, handler]
38 b5 08 48 ?4 07 4b 00 24 1c 60 {
	app_event_service_unsubscribe
}
