/// @description deal AI
// You can write your code in this editor
deal = true
	curCards = cards[|0]
	ai_hand_value += curCards.cardValue
	ds_list_add(ai_cards, curCards)
	ds_list_delete(cards,0)
	
	with(curCards){
		target_x = other.ai1_x
		target_y = other.ai1_y
		owner = 0;
	}
	ai1_x += 80
	ai_hand ++
	
	
	alarm[1] = room_speed *0.25	