with(o_balloon)
{
	if (place_meeting(x, y, other))
	{
		o_level_state.number_of_collected_minor_goals += 1;
		instance_destroy(other);
	}
}