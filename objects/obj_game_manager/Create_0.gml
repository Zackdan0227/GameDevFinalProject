/// @description Insert description here
// You can write your code in this editor
randomize()
//difficulty for boss fight and first encounter
global.difficulty = -1;
ai_deal_cards = true
player_hand_value = 0
ai_hand_value = 0
deal_cards = true
player_hit = false
player_stand = false
play = false
deal = false
ai1_x = 235
ai1_y = 150
dealcards = ds_list_create()
p1_x = 235
p1_y = 580
wait_for_player = false
faceup_cards = ds_list_create()
num_cards = 52
ai_hand = 0;
p_hand = 0;
ai_cards = ds_list_create()
player_cards = ds_list_create()
burn_cards = ds_list_create()

ai_play = true
ai_chose_x = 300
ai_chose_y = 300;

elseLoop = true
cards = ds_list_create()
card_y = 300
dep = 0
burn_cards = ds_list_create()

//card shuffle and deal generate cards
for(i=0; i< num_cards; i++){
n = i%13;

ds_list_add(dealcards, n)
}

ds_list_shuffle(dealcards)

for(i=0; i< num_cards; i++){
card_inst = instance_create_layer( 80 , card_y, "Instances", obj_card)
card_inst.card_type = dealcards[|i];
//assign values
switch(dealcards[|i]){
			case 0:
				
				card_inst.cardValue = 1
				break;
			case 1:
				
				card_inst.cardValue = 2
				break;
			case 2: 
				
				card_inst.cardValue = 3
				break;
			case 3:
				
				card_inst.cardValue = 4
				break;
			case 4:
				
				card_inst.cardValue = 5
				break;
			case 5:
				
				card_inst.cardValue = 6
				break;
			case 6:
				
				card_inst.cardValue = 7
				break;
			case 7:
				
				card_inst.cardValue = 8
				break;
			case 8:
				
				card_inst.cardValue = 9
				break;
			case 9:
				
				card_inst.cardValue = 10
				break;
			case 10:
				
				card_inst.cardValue = 10
				break;
			case 11:
				
				card_inst.cardValue = 10
				break;
			case 12:
				
				card_inst.cardValue = 10
				break;
		}
ds_list_add(cards, card_inst)
card_y +=2
}

burncard_y = 440
//AI
//set state
stateEasy = function(){
	if(ai_hand == 3 || ai_hand_value >21){
		ai_deal_cards = false
	ai_hit = false
	elseLoop = false
		alarm[5] = room_speed*1.5	
	}
	if(ai_hand<3){
		if(ai_hand_value <21){
			alarm[0] = room_speed*0.25;
		}
	}
}

stateNormal = function(){
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
}
state = stateEasy
//set hp
	if(global.difficulty>-1){
	switch(global.difficulty){
		case 0:
			state = stateEasy;
			obj_score_ai.myscore = 21;
			obj_score_ai.totalHp = 21;
		break;
		case 1:
			state = stateNormal;
			obj_score_ai.myscore = 42;
			obj_score_ai.totalHp = 42;
			break;
		case 2:
			//state = stateBoss
			obj_score_ai.myscore = 84;
			obj_score_ai.totalHp = 84;
			break;
	}
	}
	
//deal card
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
	
//player
ai_hit = false
aidealsound = true
restart_i = 0
audio_play_sound(sound_BGM,1,true)