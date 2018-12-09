// spr_cm_wind is the collision mask
// spr_arrows is what we want the wind to look like
xscale = sprite_get_width(spr_cm_wind) / sprite_get_width(spr_arrows);
yscale = sprite_get_height(spr_cm_wind) / sprite_get_height(spr_arrows);

draw_sprite_ext(
	spr_arrows,
	0, // subimg
	x,
	y,
	xscale,
	yscale,	
	image_angle, // rotation
	c_white, // color blending
	1 // alpha
);