/// @description endround
// You can write your code in this editor

//draw condition
if(ai_hand ==5 and p_hand ==5){
	obj_round_pop.display = "DRAW..."
	obj_round_pop.state = "in"
	alarm[6] = room_speed *0.25	
}

else if(player_hand_value == 21 and ai_hand_value == 21){
	obj_round_pop.display = "DRAW..."
	obj_round_pop.state = "in"
	alarm[6] = room_speed *0.25	
} else if ( player_hand_value == ai_hand_value){
	obj_round_pop.display = "DRAW..."
	obj_round_pop.state = "in"
	alarm[6] = room_speed *0.25	
}else{
if(ai_hand_value >21 and player_hand_value>21){
	audio_play_sound(sound_takedamage,1,false)
	obj_score_ai.myscore = obj_score_ai.myscore - (ai_hand_value-21)
	obj_score_p.myscore = obj_score_p.myscore- (player_hand_value-21)
	obj_hit_pop_ai.damage = (ai_hand_value-21)
	obj_hit_pop_ai.state = "in"
	obj_hit_pop_p.damage = (player_hand_value-21)
	obj_hit_pop_p.state = "in"
	obj_round_pop.display = "OUCH...DONT GO OVER 21!"
	obj_round_pop.state = "in"
	obj_shake.shake_magnitude = 10;
}
else if(ai_hand_value >21){
	obj_score_ai.myscore = obj_score_ai.myscore - (ai_hand_value-21)
	obj_score_ai.myscore -= player_hand_value
	obj_round_pop.display = "LOOK HE WENT OVER 21!"
	obj_round_pop.state = "in"
	obj_hit_pop_ai.damage = player_hand_value + (ai_hand_value-21)
	obj_hit_pop_ai.state = "in"
}

else if(player_hand_value>21){
	audio_play_sound(sound_takedamage,1,false)
	obj_shake.shake_magnitude = 10;
	obj_score_p.myscore = obj_score_p.myscore- (player_hand_value-21)
	obj_score_p.myscore -= ai_hand_value
	obj_round_pop.display = "OUCH...DONT GO OVER 21!"
	obj_round_pop.state = "in"
	obj_hit_pop_p.damage = (ai_hand_value + (player_hand_value-21))
	obj_hit_pop_p.state = "in"
}else{
	if(player_hand_value>ai_hand_value){
		obj_score_ai.myscore -= player_hand_value-ai_hand_value
		obj_round_pop.display = "NICE HIT"
		obj_round_pop.state = "in"
		obj_hit_pop_ai.damage = player_hand_value-ai_hand_value
		obj_hit_pop_ai.state = "in"
	}else if(player_hand_value<ai_hand_value){
		audio_play_sound(sound_takedamage,1,false)
		obj_shake.shake_magnitude = 10;
		obj_round_pop.display = "OUCH...HIT HIGHER!"
		obj_round_pop.state = "in"
		obj_score_p.myscore -= ai_hand_value-player_hand_value
		obj_hit_pop_p.damage = ai_hand_value-player_hand_value
		obj_hit_pop_p.state = "in"
	}
	
}

alarm[6] = room_speed *0.25
}


