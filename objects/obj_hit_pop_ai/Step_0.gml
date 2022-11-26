/// @description Insert description here
// You can write your code in this editor
if(state == "in"){
	myAlpha +=.1
	if(myAlpha ==1){
		state = "stay";
		alarm[0] = room_speed*1
	}
		
}else if (state == "out"){
	if(myAlpha!=0)
	myAlpha -= .1;
	
}