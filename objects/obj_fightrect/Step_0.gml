/// @description Rectile Code. 

switch type {
	case "WS": if valid {
		image_speed = 1
		x =+ spd
		if global.confirm {
			if distance_to_point(320, 0) < 12 {
				global.pla_fight_score = round((global.pla_atk - global.mnstr[1].def + random(2)) * 2.2)
			}
			else {
				global.pla_fight_score = round((global.pla_atk - global.mnstr[1].def + random(2)) * (1-((distance_to_point(320, 0)/100))) * 2)
			}
			valid = false
		}
	}
	else {	
		image_speed = 3
	}
	if image_index > 1 {
			image_index = 0	
		}
	break;
	
}