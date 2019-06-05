draw_set_color(c_white)
for (i=-LANE_COUNT/2;i<=LANE_COUNT/2;i+=1)
{
	draw_line(global.PLAYFIELD_WIDTH/2-TOP_LANE_WIDTH*i,TOP_LANE_Y,global.PLAYFIELD_WIDTH/2-BOTTOM_LANE_WIDTH*i,BOTTOM_LANE_Y)
}

/*lane=-3
for (i=0;i<ds_list_size(lane0);i+=1) {
	note_pos = ds_list_find_value(lane0,i)
	distance = STEP_COUNTER-note_pos
	//ratio = 
	draw_note_circle(global.PLAYFIELD_WIDTH/2+TOP_LANE_WIDTH*lane,distance,TOP_LANE_WIDTH)
}
lane=-2
for (i=0;i<ds_list_size(lane1);i+=1) {
	note_pos = ds_list_find_value(lane1,i)
	distance = STEP_COUNTER-note_pos
	//ratio = 
	//draw_note_circle(global.PLAYFIELD_WIDTH/2+TOP_LANE_WIDTH*lane,distance,TOP_LANE_WIDTH)
	draw_flick_note(global.PLAYFIELD_WIDTH/2+TOP_LANE_WIDTH*lane,distance,TOP_LANE_WIDTH)
}*/
STEP_COUNTER+=NOTE_SPACING

if (FLICKER_TIME<20) {
	draw_rectangle(global.PLAYFIELD_WIDTH/2-BOTTOM_LANE_WIDTH*3,
	BOTTOM_LANE_Y,
	global.PLAYFIELD_WIDTH/2+BOTTOM_LANE_WIDTH*3,
	BOTTOM_LANE_Y+12,false)	
	FLICKER_TIME+=1
}

if (global.mode==1) {
	draw_set_color(c_white)
	draw_text(camera_get_view_x(view_camera[0]),0,string(TIME_BETWEEN_BEAT))
	draw_text(camera_get_view_x(view_camera[0]),16,string(LAST_BEAT%TIME_BETWEEN_BEAT))
}