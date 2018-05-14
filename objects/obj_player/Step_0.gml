sprite_index=spr_ide
var l063E0CC4_0;
l063E0CC4_0 = keyboard_check(vk_right);
if (l063E0CC4_0)
{
	x += 4;
	sprite_index=spr_left;
	image_xscale=-1;
}

var l0ABF22E4_0;
l0ABF22E4_0 = keyboard_check(vk_left);
if (l0ABF22E4_0)
{
	x += -4;
	sprite_index=spr_left;
	image_xscale=1
}

var l55310359_0;
l55310359_0 = keyboard_check(vk_up);
if (l55310359_0)
{
	y += -4;
	sprite_index=spr_back
}

var l59CA47CF_0;
l59CA47CF_0 = keyboard_check(vk_down);
if (l59CA47CF_0)
{
	y += 4;
	sprite_index=spr_down
}

//var dir = point_direction(x,y,mouse_x,mouse_y);

//image_angle = dir;

var l3CC713B2_0;
l3CC713B2_0 = mouse_check_button(mb_left);
if (l3CC713B2_0)
{
	if(cooldown < 1)
	{
		instance_create_layer(x, y, "Bullets", obj_bullet);
	
		cooldown = 3;
	}
}

cooldown += -1;