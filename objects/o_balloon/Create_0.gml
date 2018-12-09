b_friction = 0;
b_density = 0.3;
b_linear_damping = 0.0;
b_angular_damping = 0;
b_restitution = 0.0;

shape_radius = 16;

event_inherited();

physics_fixture_set_circle_shape(fixture, shape_radius);

physics_fixture_bind(fixture, id);

physics_fixture_delete(fixture);
