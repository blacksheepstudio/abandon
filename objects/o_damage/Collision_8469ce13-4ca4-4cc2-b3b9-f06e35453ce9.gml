///Collide

if instance_exists(other) and instance_exists(creator)
{
	
	if (other.id != creator and other.faction != creator.faction)
	{
		// Stop playing from sprinting if hit
		if (other.object_index == o_player)
		{
			with (other)
			{
				s_sprint_reset();	
			}
		}
		
		// Deal damage
		s_deal_damage(creator, other.id)
		
		
		// STUN (THIS MUST BE REMOVED)
		if stun_duration > 0
		{
			other.state = s_state_stall;
			other.timer_stall = stun_duration;
		}
		
		// Create exp object if target is killed
		if (other.stats_hp_current <= 0)
		{
			s_create_exp(other, creator, o_exp1);
		}
		
		// Apply knockback and fx
		var dir = point_direction(creator.x, creator.y, other.x, other.y);
		var xforce = lengthdir_x(knockback, dir);
		var yforce = lengthdir_y(knockback, dir);
		with (other)
		{
			// state_substate = s_substate_stagger;
			s_color_object_fx(id, c_red, 10);
			physics_apply_impulse(x, y, xforce, yforce);
		}
	}
}
