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

state();
