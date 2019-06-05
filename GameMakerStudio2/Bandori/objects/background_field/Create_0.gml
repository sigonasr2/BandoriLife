gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true)
layer_force_draw_depth(false, 0);

global.PLAYFIELD_WIDTH=1024
global.PLAYFIELD_HEIGHT=768

TOP_LANE_WIDTH=96
BOTTOM_LANE_WIDTH=96
TOP_LANE_Y = global.PLAYFIELD_HEIGHT/2-3600
BOTTOM_LANE_Y = global.PLAYFIELD_HEIGHT/2+360
LANE_COUNT=7

DARKNESS_TIMER=0
DARKNESS_COUNT=150
MAX_DARKNESS=0.6

NOTE_SPACING=4.5
STEP_COUNTER=0

/*lane0 = ds_list_create();
lane1 = ds_list_create();
lane2 = ds_list_create();
lane3 = ds_list_create();
lane4 = ds_list_create();
lane5 = ds_list_create();
lane6 = ds_list_create();*/

PREVIOUS_Y=0

/*for (i=1;i<30;i+=1) {
	ds_list_add(lane0,140*i)
}

for (i=1;i<30;i+=1) {
	ds_list_add(lane1,210*i)
}*/

camera = camera_create();

projmat = matrix_build_projection_perspective_fov(-60 , -view_get_wport(1)/view_get_hport(1), 32, 32000);
camera_set_proj_mat(camera, projmat);
view_set_camera(1,camera);
camera_set_update_script(view_camera[1], camera_update);

initialize_billboard_vert()

global.playing_id = audio_play_sound(global.music_selection,100,false)

LAST_BEAT = 0
BEATS_PER_SECOND = global.music_bpm/60
TIME_BETWEEN_BEAT = 1/BEATS_PER_SECOND
FLICKER_TIME = 0

FLICKER_OFFSET = 0.5 //Amount of time in seconds to offset the flicker. Set with END key in EDIT MODE.

LAST_BEAT += FLICKER_OFFSET