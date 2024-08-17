/// @description Insert description here
// You can write your code in this editor

depth = -y;
switch global.player_control {
	case true: {
		moveRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
		moveUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
		moveLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
		moveDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
		break;



	}
	//interaction, stops the player from being able to move
	case false: {
		moveRight = 0;
		moveUp = 0;
		moveLeft = 0;
		moveDown = 0;
		
		}; break;
	}

vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

/* for idle sprites when the player is not moving
if (vx == 0 && vy == 0) {
	switch dir {
		 case 1: sprite_index = spr_player_idle_up break;
		 case 2: sprite_index = spr_player_idle_left break;
		 case 3: sprite_index = spr_player_idle_down break;
		 case 0: sprite_index = spr_player_idle_right break;
	}	
}
*/

if (vx != 0 || vy != 0) {
	if !collision_point(x+vx,y,obj_par_environment,true,true){
	x += vx;
	}
	
	if !collision_point(x,y+vy,obj_par_environment,true,true){
	y += vy;
	}
	
	if (vx > 0) {
		sprite_index = Spr_player_walk_right
		dir = 0
	}
	if (vx <0) {
		sprite_index = Spr_player_walk_left
		dir = 2}
	if (vy > 0) {
		sprite_index = Spr_player_walk_down
		dir = 3
		}
	if (vy < 0 ) {
		sprite_index = Spr_player_walk_up
		dir = 1
		}
	
}

Scr_terrain_checker()

