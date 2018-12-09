b_friction = 0;
b_density = 0;
b_linear_damping = 0;
b_angular_damping = 0;
b_restitution = 0;

half_width = 16;
half_height = 16;

event_inherited();

physics_fixture_set_box_shape(fixture, half_width, half_height);

physics_fixture_bind(fixture, id);

physics_fixture_delete(fixture);

