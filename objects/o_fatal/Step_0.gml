with(o_balloon)
{
	if (place_meeting(x, y, other))
	{
		instance_destroy(id);
	}
}