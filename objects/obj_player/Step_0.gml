if (m_act)
{
	if(m_fashe==false&& image_index>=2)
	{
		instance_create_layer(x+x_pianyi, y+y_pianyi, "Bullets", obj_bullet);
		m_fashe=true;
	}
	return 0;
}
sprite_index=spr_ide;
var l063E0CC4_0;
l063E0CC4_0 = keyboard_check(vk_right);
if (l063E0CC4_0)
{
	x += 4;
	sprite_index=spr_left;
	image_xscale=-1;
	m_playDirection=PlayDirection.right;
}

var l0ABF22E4_0;
l0ABF22E4_0 = keyboard_check(vk_left);
if (l0ABF22E4_0)
{
	x += -4;
	sprite_index=spr_left;
	image_xscale=1;
	m_playDirection=PlayDirection.left;
}

var l55310359_0;
l55310359_0 = keyboard_check(vk_up);
if (l55310359_0)
{
	y += -4;
	sprite_index=spr_back;
	m_playDirection=PlayDirection.up;
}

var l59CA47CF_0;
l59CA47CF_0 = keyboard_check(vk_down);
if (l59CA47CF_0)
{
	y += 4;
	sprite_index=spr_down;
	m_playDirection=PlayDirection.down;
}

//var dir = point_direction(x,y,mouse_x,mouse_y);

//image_angle = dir;

var l3CC713B2_0;
l3CC713B2_0 = mouse_check_button(mb_left);
if (l3CC713B2_0 && m_act == false)
{
	m_act =true;
	m_fashe=false;
	switch(m_playDirection)
	{
	case PlayDirection.up:
		sprite_index=act_up;
		x_pianyi=0;
		y_pianyi=-89;
		break;
	case PlayDirection.down:
		sprite_index=act_down;
		x_pianyi=0;
		y_pianyi=7;
		break;
	case PlayDirection.left:
		sprite_index=act_left;
		x_pianyi=-65;
		y_pianyi=-33;
		break;
	case PlayDirection.right:
		sprite_index=act_left;
		x_pianyi=65;
		y_pianyi=-33;
	}
	image_index=0;
}
