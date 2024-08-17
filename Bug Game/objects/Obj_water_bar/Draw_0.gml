/// @description Insert description here
// You can write your code in this editor

waterbar_x = camera_get_view_x(view_camera[0]) + 15;
waterbar_y = camera_get_view_y(view_camera[0]) + 15;

if global.water > max_water {global.water = max_water}

draw_sprite_ext(Spr_bar_frame_back,0,waterbar_x, waterbar_y, waterbar_width_ui / sprite_get_width(Spr_bar_frame), waterbar_height_ui / sprite_get_height(Spr_bar_frame),0,c_white,1);
			draw_sprite_stretched(global.bar_sprite,0,waterbar_x, waterbar_y,(global.water/max_water)*waterbar_width,waterbar_height);
			draw_sprite_ext(Spr_bar_frame,0,waterbar_x, waterbar_y, waterbar_width_ui / sprite_get_width(Spr_bar_frame), waterbar_height_ui / sprite_get_height(Spr_bar_frame),0,c_white,1);
			
		