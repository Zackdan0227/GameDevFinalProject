/// @description clean up after each round
// You can write your code in this editor

for(i=0; i<ds_list_size(ai_cards); i++){
	
ds_list_add(burn_cards, ai_cards[|i])	
}
for(i=0; i<ds_list_size(player_cards); i++){
	
ds_list_add(burn_cards, player_cards[|i])	
}

for(i = 0; i<ds_list_size(cards);i++){
	ds_list_add(burn_cards, cards[|i])	
}
totalCards = p_hand + ai_hand +ds_list_size(cards)
ds_list_shuffle(dealcards)
card_y = 420

ds_list_clear(cards)
ds_list_clear(player_cards)
ds_list_clear(ai_cards)
alarm[11] = room_speed*0.1