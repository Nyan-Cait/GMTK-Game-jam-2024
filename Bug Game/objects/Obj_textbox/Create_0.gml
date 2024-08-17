/// @description Insert description here
// You can write your code in this editor

//textbox parameters
textbox_width = 500;
textbox_height = 150;

border = 15;
line_sep = 20;
line_width = textbox_width - border *2;
txtb_spr = Spr_textbox;
txtb_img = 0;
txtb_img_spd = 0;


//the text
page = 0;
page_number = 0;
text[0] = "It is a warm and sunny day, our friend Leopold is an Isopod. They don't do well in warm and sunny areas.";
text[1] = "For some inexplicable reason he feels the need to move towards the vibration he picks up on, against his better judgment to avoid activity during the day.";
text[2] = "He chooses to leave his comfort burrow, for greater things";
//text[3] = "sgrwagewrgaerg";
text_lenght[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;