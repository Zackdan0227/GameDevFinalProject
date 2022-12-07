/// @description deal AI
// You can write your code in this editor
show_debug_message("AI HEALTH: " + string(obj_score_ai.myscore))
if(ai_deal_cards){
ai_hand++
curCards = cards[|0]
if(ai_hand >=2){
	if(curCards!=noone)
	curCards.facedown = false
}

	ai_hand_value += curCards.cardValue
	show_debug_message("AI "+string(ai_hand_value))
	ds_list_add(ai_cards, curCards)
	ds_list_delete(cards,0)
	
	audio_play_sound(sound_deal,1,false)
	with(curCards){
		target_x = other.ai1_x
		target_y = other.ai1_y
		facedown = false
		owner = 0;
	}
	ai1_x += 75
	
	if(ai_hand == 2){
			ai_deal_cards = false
			alarm[1] = room_speed*0.25
	}
}
if(ai_hit){
if(ai_hand_value<=16){
if(ai_hand <5 and ai_hand_value <21){
	
	alarm[0] = room_speed*0.25	
}else if(ai_hand ==5){
	ai_deal_cards = false
	ai_hit = false
	elseLoop = false
	alarm[5] = room_speed*1.5
}

}else{
	if(elseLoop){
	ai_deal_cards = false
	ai_hit = false
	alarm[5] = room_speed*1.5
}
}
}