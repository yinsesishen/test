var vc = view_camera[0];

var cx = camera_get_view_x(vc);

var cy = camera_get_view_y(vc);

var cw = camera_get_view_width(vc);

draw_set_font(fnt_score);

draw_set_colour($FFFFFFFF & $ffffff);

draw_text(cx+(cw/2), cy+25, string("Score:") + string(thescore));