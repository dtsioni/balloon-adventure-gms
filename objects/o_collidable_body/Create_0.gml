event_inherited();

fixture = physics_fixture_create();

physics_fixture_set_density(fixture, b_density);
physics_fixture_set_friction(fixture, b_friction);
physics_fixture_set_linear_damping(fixture, b_linear_damping);
physics_fixture_set_angular_damping(fixture, b_angular_damping);
physics_fixture_set_restitution(fixture, b_restitution);

physics_fixture_set_collision_group(fixture, 1);
