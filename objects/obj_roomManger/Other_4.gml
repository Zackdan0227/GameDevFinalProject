/// @description Insert description here
// You can write your code in this editor
if (instance_exists(targetInstance)) {
	// Create player
	if (!instance_exists(obj_playerC)) {
		instance_create_layer(0, 0, "Instances", obj_playerC);
	}
	
	// Move player to target
	obj_playerC.x = targetInstance.x;
	obj_playerC.y = targetInstance.y;
	
	// Clear target
	targetInstance = noone;
}


