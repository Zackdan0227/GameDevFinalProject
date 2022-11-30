/// @description Insert description here
// You can write your code in this editor
var old_x = x;
var old_y = y;
var walking = false;
var s = 10;

if(collision_circle(x,y,50,obj_npc,false,false)){
	if(keyboard_check_pressed(ord(" "))){
		global.texbox_showing = true;
		
	}
}else{
	global.texbox_showing = false;
}

if(keyboard_check(ord("W"))){
	y = y - s;
	walking = true;
}
if(keyboard_check(ord("S"))){
	y = y + s;
	walking = true;
}

if(keyboard_check(ord("A"))){
	x = x - s;
	walking = true;
}

if(keyboard_check(ord("D"))){
	x = x + s;
	walking = true;
}

if(place_meeting(x,y,obj_npc)){
	x = old_x;
	y = old_y;
}

if(place_meeting(x,y,obj_wall)){
	x = old_x;
	y = old_y;
}


depth = -y;

var _exit = instance_place(x, y, obj_exit);


// Enter room when trigger area is left
if (!enteredRoom && _exit == noone) {
	enteredRoom = true;
}

if (enteredRoom && _exit != noone) {
	room_goto(_exit.targetRoom);
	
	obj_roomManger.targetInstance = _exit.targetInstance;

	enteredRoom = false;
}



