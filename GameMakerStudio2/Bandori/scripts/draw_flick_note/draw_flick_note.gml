///	@function draw_flick_note(center_x,center_y,notesize)
///	@description Draws a flick note at a given position.
///	@param center_x Center X Position
///	@param center_y Center Y Position
///	@param notesize Size Ratio of note (width)	

draw_sprite_ext(flick_note_spr,0,argument0,argument1
,argument2/sprite_get_width(flick_note_spr)
,argument2/sprite_get_width(flick_note_spr)
,0,c_white,1)
draw_billboard_obj(vert,flick_note_3d_spr,argument0,argument1,-105,-90,0,0,32,32,32)