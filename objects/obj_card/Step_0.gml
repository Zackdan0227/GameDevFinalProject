/// @description Insert description here
// You can write your code in this editor



if(facedown){
		sprite_index = spr_card_back	
	}else{
		switch(card_type){
			case 0:
				sprite_index = spr_A
				
				break;
			case 1:
				sprite_index = spr_2
				
				break;
			case 2: 
				sprite_index = spr_3
				
				break;
			case 3:
				sprite_index = spr_4
			
				break;
			case 4:
				sprite_index = spr_5
				
				break;
			case 5:
				sprite_index = spr_6
			
				break;
			case 6:
				sprite_index = spr_7
				
				break;
			case 7:
				sprite_index = spr_8
			
				break;
			case 8:
				sprite_index = spr_9
				
				break;
			case 9:
				sprite_index = spr_10
				
				break;
			case 10:
				sprite_index = spr_J
				
				break;
			case 11:
				sprite_index = spr_Q
				
				break;
			case 12:
				sprite_index = spr_K
				
				break;
		}
		
	}

	if(target_x >0 and target_y >0)	{
		x = lerp(x, target_x, 0.2)
		y = lerp(y, target_y, 0.2)
	}
