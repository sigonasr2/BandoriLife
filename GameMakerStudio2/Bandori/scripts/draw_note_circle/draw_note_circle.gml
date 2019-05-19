///	@function draw_note_circle(center_x,center_y,notesize)
///	@description Draws a note at a given position.
///	@param center_x Center X Position
///	@param center_y Center Y Position
///	@param notesize Size Ratio of note (width)	

/*draw_set_color(c_white)
draw_ellipse(argument0-argument2/2,argument1-argument2/4,argument0+argument2/2,argument1+argument2/4,false)
draw_set_color(c_black)
draw_ellipse(argument0-argument2/3,argument1-argument2/8,argument0+argument2/3,argument1+argument2/8,false)
draw_line_color(argument0-argument2/1.5,argument1,argument0+argument2/1.5,argument1,c_aqua,c_aqua)*/

draw_sprite_ext(music_note_spr,0,argument0,argument1
,argument2/sprite_get_width(music_note_spr)
,argument2/sprite_get_width(music_note_spr)
,0,c_white,1)