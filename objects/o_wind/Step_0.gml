with(o_balloon)
{
	if (place_meeting(x, y, other))
	{
		x_force = cos(degtorad(other.image_angle)) * other.force;
		y_force = sin(degtorad(other.image_angle)) * other.force * -1;
		physics_apply_local_force(0, 0, x_force, y_force);
		show_debug_message(string(other.image_angle) + " " + string(x_force) + " " + string(y_force));
	}
}