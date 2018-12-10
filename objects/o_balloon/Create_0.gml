b_friction = 0;
b_density = 0.05;
b_linear_damping = 0.0;
b_angular_damping = 0;
b_restitution = 0.0;

shape_radius = 32;

size_sprite = spr_balloon_mask;
image_sprite = spr_balloon;

event_inherited();

physics_fixture_set_circle_shape(fixture, shape_radius);

physics_fixture_bind_ext(
	fixture,
    id, 
	sprite_get_width(size_sprite) * -1/2,
	sprite_get_height(size_sprite) * -1/2);

physics_fixture_delete(fixture);

instance_create_layer(0, 0, "setup", o_balloon_burners);
