with (o_balloon)
{
	if (scr_player_touch())
	{
		if (phy_speed_y < 0)
		{
			physics_apply_local_force(0, 0, 0, other.force);
		}
		else
		{
			physics_apply_local_impulse(0, 0, 0, other.impulse);
		}
	}
	
	if (phy_speed_y < 0 && abs(phy_speed_y) > other.max_up_speed)
	{
		phy_speed_y = other.max_up_speed * -1;
	}
	
	if (phy_speed_y > 0 && phy_speed_y > other.max_down_speed)
	{
		phy_speed_y = other.max_down_speed;
	}
	
	if(abs(phy_speed_x) > other.max_x_speed)
	{
		if(phy_speed_x < 0)
		{
			phy_speed_x = other.max_x_speed * -1;
		}
		else
		{
			phy_speed_x = other.max_x_speed;
		}
	}
}
