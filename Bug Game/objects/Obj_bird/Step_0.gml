/// @description Insert description here
// You can write your code in this editor
switch spawn_randomised  {
	case false:
//		image_alpha = 0;
	//	image_xscale = 0;
//		image_yscale = 0;
		left = camera_get_view_x(view_camera[0]) - random_range(low,high);
		right = camera_get_view_width(view_camera[0]) + random_range(low, high);
		above = camera_get_view_y(view_camera[0]) - random_range(low,high);
		below = camera_get_view_height(view_camera[0]) + random_range(low, high);

		getX = choose(left, right);
		getY = choose(above, below);
	
		spawn_animation = false
		x= getX;
		y= getY;
	
		if getX = left && getY = above {dir = random_range(225, 405) 
			spawn_randomised = true;
			show_debug_message("left above")
			}
		else if getX = left && getY = below {dir = random_range(315, 495) 
			spawn_randomised = true;
			show_debug_message("left below")
			}
		else if getX = right && getY = above {dir = random_range(135, 315) 
			spawn_randomised = true;
			show_debug_message("right above")
			}
		else if getX = right && getY = below {dir = random_range(45,225) 
			spawn_randomised = true;
			show_debug_message("right below")
			}	
	
	break;
	case true:

	if place_meeting(x, y, Obj_bird_border){spawn_randomised = false}
	if spawn_animation = false && swooping =false{
			if image_alpha < 0.7 { image_alpha = image_alpha + fade;}
			if image_xscale < 5 { image_xscale = image_xscale + swoop}
			if image_yscale < 5 { image_yscale = image_yscale + swoop}
			spawn_animation = true;
	}
	
	image_angle = dir
	direction = dir
	speed = spd;
		if  (place_meeting(x,y,Obj_player)) && global.hidden = false {
		image_alpha = image_alpha + fade *2;
		image_xscale = image_xscale + swoop *2.5
		image_yscale = image_yscale + swoop *2.5
		swooping = true
		}
		
		if  !(place_meeting(x,y,Obj_player)){
		if image_alpha > 0.5 { image_alpha = image_alpha - fade;} else image_alpha = 0.5
		if image_xscale > 5 { image_xscale = image_xscale - swoop} else {image_xscale = 5}
		if image_yscale > 5 { image_yscale = image_yscale - swoop} else {image_yscale = 5}
		swooping = false
		}
	if image_xscale >= 17 {room_restart()}
}