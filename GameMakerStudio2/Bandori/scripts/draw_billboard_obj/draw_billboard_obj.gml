///	@function draw_billboard_obj(vertex,sprite,x,y)
///	@description Draws a billboard object with the following sprite.
///	@param vertex Reference vertex matrix.
///	@param sprite sprite to use.
///	@param x
///	@param y
///	@param z
///	@param xrot
///	@param yrot
///	@param zrot
///	@param xsize Number of pixels in the x axis.
///	@param ysize Number of pixels in the y axis.
///	@param zsize Number of pixels in the z axis.

var matrix = matrix_build(argument2,argument3,argument4,argument5,argument6,argument7,argument8/64,argument9/64,argument10/64);

matrix_set(matrix_world, matrix);

vertex_submit(argument0, pr_trianglelist, sprite_get_texture(argument1,0));

matrix_set(matrix_world, matrix_build_identity());