var player = false;
player = instance_exists(obj_player);
if(player)
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	speed = speed;

	image_angle = direction;

	if(hp <= 0)
	{
		with(obj_score) {
		thescore += 5;
		
		}
	
		audio_sound_pitch(death, random_range(0.8,1.2));
	
		audio_play_sound(death, 0, 0);
	
		instance_destroy();
	}
}