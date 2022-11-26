// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function burn(card, y_loc){
var x_loc = 540
audio_play_sound(sound_deal,1,false)
card.facedown = false
	card.target_x = x_loc
	card.target_y = y_loc


}