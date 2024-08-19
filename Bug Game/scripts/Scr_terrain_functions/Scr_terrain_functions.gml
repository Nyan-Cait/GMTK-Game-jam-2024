// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum terrain {
	ground,
	water,
	poison,
	glass,
	bird,
	shelter
	}

function Scr_terrain_checker() {
	//when the player isn't standing on any special terrain it should default to ground.
	//there's probably a better way of writing this code but i don't know how to do it without
	//the terrain checher constantly switching to ground when it shouldn't
	
_terrain_checked = false;
	///bird 
//	if collision_point(x,y,Obj_bird,true,true) && _terrain_checked = false {
//	_terrain_checked = true;
//	Scr_terrain(terrain.bird)
	
//	}
	///water
	if collision_point(x, y, Obj_water, true, true) && _terrain_checked = false{
	_terrain_checked = true;
	Scr_terrain(terrain.water)
	}	

	///poison
	if collision_point(x, y, Obj_poison, true, true) && _terrain_checked = false{
	_terrain_checked = true;
	Scr_terrain(terrain.poison)
	}	
	
	///glass
	if collision_point(x, y, Obj_glass, true, true) && _terrain_checked = false{
	_terrain_checked = true;
	Scr_terrain(terrain.glass)
	}
	
	///shelter
	if collision_point(x, y, Obj_shadow, true, true) && _terrain_checked = false{
	_terrain_checked = true;
	Scr_terrain(terrain.shelter)
	}
	
	///ground
	if !collision_point(x, y, Obj_water, true, true)&& _terrain_checked = false|| !collision_point(x, y, Obj_poison, true, true)&& _terrain_checked = false|| !collision_point(x, y, Obj_glass, true, true) &&_terrain_checked = false || !collision_point(x, y, Obj_shadow, true, true)&& _terrain_checked = false{
	_terrain_checked = true;
	Scr_terrain(terrain.ground)
	}
}
	
function Scr_terrain(_terrain){
	switch _terrain {

	//player is standing on water
	case terrain.water: 
		global.bar_sprite = Spr_bar_water;
		global.water = global.water + 2
		walkSpeed = 7;
		show_debug_message("terrain water")
		break;
		
	//player is standing on pestisides/poison
	case terrain.poison: 
		global.bar_sprite = Spr_bar_poison;
		global.water = global.water - 1;
		walkSpeed = 7;
		show_debug_message("terrain posion")
		break;
		
	//player is standing on glass
	case terrain.glass:
		global.bar_sprite = Spr_bar_water;
		global.water = global.water - 0.25;
		walkSpeed = 14;
		show_debug_message("terrain glass")
		break;
	
	case terrain.shelter:
		global.bar_sprite = Spr_bar_water;
		global.water = global.water - 0.25;
		walkSpeed = 7;
		
		show_debug_message("terrain shelter")
		break;
		//player isn't standing on special ground
	case terrain.ground:
		global.bar_sprite = Spr_bar_water;
		global.water = global.water - 0.25;
		walkSpeed = 7;
		show_debug_message("terrain ground")
		break;
	case terrain.bird:
		global.bar_sprite = Spr_bar_red
		global.water = global.water - 0.25;
		walkSpeed = 10
		show_debug_message("terrain bird")
		break;
	}	
}

