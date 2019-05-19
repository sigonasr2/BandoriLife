var zz = -640;
var xx = lengthdir_x(720,-90) + (global.PLAYFIELD_WIDTH*0.5);//Rotation is negative now to match with the old gif and spin clockwise
var yy = lengthdir_y(720,-90) + (global.PLAYFIELD_HEIGHT*0.5);
viewmat = matrix_build_lookat(xx,yy, zz, (global.PLAYFIELD_WIDTH*0.5),(global.PLAYFIELD_HEIGHT*0.5), 0, 0, 0,-1);
// NORMAL //projmat = matrix_build_projection_ortho(global.PLAYFIELD_WIDTH, global.PLAYFIELD_HEIGHT, 1.0, 32000.0);
camera_set_view_mat(view_camera[1], viewmat);