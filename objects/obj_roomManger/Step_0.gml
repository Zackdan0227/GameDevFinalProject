/// @description Insert description here
// You can write your code in this editor

if(global.levelNormal){
 with(room1_exit2){
	enable = true;	 
 }
 with(room1_exit1){
	enable = false;	 
 }
}else{
with(room1_exit2){
	enable = false;	 
 }
}

if(global.defeatEnemyTwo){
	with(room1_exit2){
		enable = false
	}
}

//if(global.defeatEnemyTwo and global.keyCreate ){
	//global.keyCreate = false
	//inst_key = instance_create_layer(600, 280, "Instances",obj_key);
//}