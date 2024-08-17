/// @description Insert description here
// You can write your code in this editor
accept_key = keyboard_check_pressed(vk_space);
depth = -9999
textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0] + 0);

// setup
if setup == false {
	setup = true
	draw_set_font(Font_dialogue);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop trough pages
	page_number = array_length(text);
	for(var p = 0; p< page_number; p++) {
		//find how many characters are on each page and store that number in the "text_lenght" array
		text_lenght[p] = string_length(text[p])
		
		//get the x position for the textbox
		 //no character speaking
		text_x_offset[p] = 230;	
	}

}


//---------------typing the text
if draw_char < text_lenght[page] {
	draw_char += text_spd;
	draw_char = clamp(draw_char, 0, text_lenght[page]);
}

	//flip trough pages
	if accept_key {
		//if the typing is done
		if draw_char == text_lenght[page]{
			//next page
			if page < page_number -1 {
				page++;
				draw_char = 0;	
			}
			//destroy the textbox
			else {
				instance_destroy();
			}		
	
		}
	//if not done typing
	else {
		draw_char = text_lenght[page];
	
	}


}

//----------------draw the textbox
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr);
txtb_spr_h = sprite_get_height(txtb_spr);

//draw the back of the textbox
draw_sprite_ext(txtb_spr, txtb_img, textbox_x + text_x_offset[page], textbox_y + 375, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0 , c_white, 1)

//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border + 375, _drawtext, line_sep, line_width);