/// @description Insert description here
// You can write your code in this editor
x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])

image_xscale =width
image_yscale = height


switch Obj_player.bird {
	case true: if image_alpha <= 0.90{ image_alpha = image_alpha + fade;}
//				if image_alpha >= 0.90 {room_restart()}
	break;
	
	case false: if image_alpha >= 0{ image_alpha = image_alpha - fade;} 
				if image_alpha <= 0 {instance_destroy()					} 
	break;

}