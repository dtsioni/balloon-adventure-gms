b_friction = 0.1;
b_density = 0;
b_linear_damping = 0;
b_angular_damping = 0;
b_restitution = 0.5;

half_width = 64;
half_height = 16;

size_sprite = spr_platform_mask;
image_sprite = spr_platform_mask;

event_inherited();

physics_fixture_set_kinematic(fixture);
physics_fixture_set_box_shape(fixture, half_width, half_height);
physics_fixture_bind_ext(
	fixture,
    id, 
	sprite_get_width(size_sprite) * -1/2,
	sprite_get_height(size_sprite) * -1/2);
physics_fixture_delete(fixture);

phy_speed_x = 1;
path_start(p_line_512, 1, path_action_restart, false);
