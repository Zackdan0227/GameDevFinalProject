/// @description deal player
// You can write your code in this editor
if(deal_cards){
curCards = cards[|0]
	player_hand_value += curCards.cardValue
	show_debug_message("player "+ string(player_hand_value))
	ds_list_add(player_cards, curCards)
	ds_list_delete(cards,0)
	audio_play_sound(sound_deal,1,false)
	with(curCards){
		target_x = other.p1_x
		target_y = other.p1_y
		owner = 0;
		deal = true;
		facedown = false
	}
	p1_x += 80
	p_hand ++
	if(ai_hand<2){
	alarm [0] = room_speed*0.25}
	
	
	
}

if(ai_hand ==2 and p_hand ==2){
deal_cards = false;	
ai_deal_cards =false;
alarm[3] = room_speed *0.25
}



if(p_hand ==5 and player_hand_value <=21){
	play = false
	wait_for_player =false
alarm [4] = room_speed*0.5	
}else if(player_hand_value>21){
	play = false
	wait_for_player =false
alarm [4] = room_speed*0.5	
}else if(player_hand_value ==21){
	play = false
	wait_for_player =false
alarm [4] = room_speed*0.5	
}else{
	wait_for_player = true	
}




