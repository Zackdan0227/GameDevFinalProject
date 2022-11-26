/// @description restart game
// You can write your code in this editor

if(restart_i< 51){
card_shuff = burn_cards[|restart_i]
if(card_shuff!=noone){
	audio_play_sound(sound_deal,1,false)
card_shuff.target_x = 80
card_shuff.target_y = card_y
card_shuff.facedown = true
card_shuff.card_type = dealcards[|restart_i]
cardtype(dealcards[|restart_i], card_shuff)
ds_list_add(cards, card_shuff)

card_y-=5
}
restart_i++
show_debug_message(restart_i)
if(restart_i< 51)alarm[7] = room_speed*0.05
}

if(restart_i == totalCards-1){
	show_debug_message(restart_i)
	card_shuff = burn_cards[|restart_i]
if(card_shuff!=noone){
	audio_play_sound(sound_deal,1,false)
card_shuff.target_x = 80
card_shuff.target_y = card_y
card_shuff.facedown = true
card_shuff.card_type = dealcards[|restart_i]
cardtype(dealcards[|restart_i], card_shuff)
ds_list_add(cards, card_shuff)

card_y-=5
}
ds_list_clear(burn_cards)

alarm[8] = room_speed*0.05
}