xscale = sprite_get_width(size_sprite) / sprite_get_width(image_sprite);
yscale = sprite_get_height(size_sprite) / sprite_get_height(image_sprite);

draw_sprite_ext(
	image_sprite,
	0, // subimg
	x,
	y,
	xscale,
	yscale,	
	image_angle, // rotation
	c_white, // color blending
	1 // alpha
);


if(global.debug)
{
	draw_set_colour(c_red);
	physics_world_draw_debug(phy_debug_render_core_shapes | phy_debug_render_aabb);
	physics_draw_debug();
}