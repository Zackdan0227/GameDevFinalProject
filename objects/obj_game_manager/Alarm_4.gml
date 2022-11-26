/// @description ai play game
// You can write your code in this editor
play = false
ai_deal_cards = true;
ai_hit = true
var tempCard = ai_cards[|0]
	if(tempCard!= noone){
		if(tempCard.facedown)
		tempCard.facedown = false
	}

if(ai_hand_value<=16){
if(ai_hand <5 and ai_hand_value <21){
	
	alarm[0] = room_speed*0.25	
}

}
if(ai_hand_value>16 and ai_hand<=5){
	ai_deal_cards = false
	ai_hit = false
	elseLoop = false
	alarm[5] = room_speed*1.5
}