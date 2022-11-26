/// @description end round
// You can write your code in this editor
if(obj_score_ai.myscore <=0){
alarm[10] = room_speed*0.25
}else if (obj_score_p.myscore<=0){
alarm[2] = room_speed * 0.25
}else if (obj_score_p.myscore>0 and obj_score_ai.myscore>0){
alarm[7] = room_speed*1
}else if(obj_score_p.myscore<0 and obj_score_ai.myscore<0){
if(	obj_score_p.myscore>obj_score_ai.myscore){
	alarm[10] = room_speed*0.25
}else{
	alarm[2] = room_speed * 0.25
}
}