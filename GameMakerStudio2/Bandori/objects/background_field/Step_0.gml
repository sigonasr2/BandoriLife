if (DARKNESS_TIMER<DARKNESS_COUNT) {
	DARKNESS_TIMER+=1
	layer_id = layer_get_id("stage_darkness")
	element_id = layer_get_element_layer(layer_id)
	layer_background_alpha(element_id,DARKNESS_TIMER/DARKNESS_COUNT * MAX_DARKNESS)
}

if (LAST_BEAT+TIME_BETWEEN_BEAT<audio_sound_get_track_position(global.playing_id)) {
		FLICKER_TIME = 0
		LAST_BEAT+=TIME_BETWEEN_BEAT
}