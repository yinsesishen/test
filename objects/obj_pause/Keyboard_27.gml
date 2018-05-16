if	(!global.paused)
{
	global.global.paused=true;
	if (sprite_exists(global.screen_pic))
	{
		sprite_delete(global.screen_pic);
	}
	global.screen_pic = sprite_create_from_surface(application_surface,0,0,room_width,room_height,false,false,0,0);
	instance_deactivate_all(all);
    instance_create_layer(room_width/2,room_height/2,"pipe",obj_continue);
}
if	(global.paused)
{
	instance_activate_all();
	global.paused = false;
}

	
