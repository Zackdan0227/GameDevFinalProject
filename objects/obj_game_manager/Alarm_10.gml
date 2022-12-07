/// @description Roomwon
// You can write your code in this editor
audio_stop_all()
if(global.difficulty= 0){
room_goto(rm_won);
}else if(global.difficulty = 1){
global.defeatEnemyTwo = true;
room_goto(rm_won2);
}else if (global.difficulty = 2){
room_goto(rm_bossend);	
}