/// @description Soul Stuff.

global.confirm = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("z"))
global.back = keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("x"))
if global.pla_turn == false { // function outside of a menu.
	visible = true
	curspd = global.pla_basespd+global.soul_spd 
	xspd = keyboard_check(vk_right) - keyboard_check(vk_left)
	yspd = keyboard_check(vk_down) - keyboard_check(vk_up) /*GM is a bitch to me...*/ 
	if global.back {
		slow = true
	}
	else {
		slow = false
	}
	xspd *= curspd; yspd *= curspd
	if slow = false {
	x += xspd
	y += yspd
	}
	else {
	x += xspd/2
	y += yspd/2
	}
x = clamp(x, cnt_box.boxleft-2, cnt_box.boxright-16)
y = clamp(y, cnt_box.boxup-2, cnt_box.boxy-17)
}
else { /*Function inside of a menu*/
	switch global.pla_turn_state {
		case 0:
				switch global.game_buttons{
					case 1: x = 37 break
					case 2: x = 187 break
					case 3: x = 337 break
					case 4: x = 485 break
				}
				if keyboard_check_pressed(vk_right) {
					if global.game_buttons < 4 {
						global.game_buttons++	
					}
					else {
						global.game_buttons = 1
					}	
				}
				if keyboard_check_pressed(vk_left) {
					if global.game_buttons > 1 {
						global.game_buttons--	
					}
					else {
						global.game_buttons = 4
					}
			}
			if global.confirm {
				global.pla_turn_state = 1
			}	
			y = 413
		break;
	
		case 2: 
				switch global.pla_turn_selector {
					case 0: x = 40; y = global.box_y - global.box_height + 15; break;
					case 1: x = 415; y = global.box_y - global.box_height + 15; break;
					case 2: x = 40; y = global.box_y - global.box_height + 85; break;
					case 3: x = 415; y = global.box_y - global.box_height + 85; break;
				}
				if keyboard_check_pressed(vk_right) {
				if global.pla_turn_selector < 3 {
					global.pla_turn_selector++
				}
				else {
					global.pla_turn_selector = 0
				}	
			}
				if keyboard_check_pressed(vk_left) {
					if global.pla_turn_selector > 0 {
						global.pla_turn_selector--	
					}
					else 
						global.pla_turn_selector = 3
					}
				if keyboard_check_pressed(vk_up) {
					if global.pla_turn_selector < 2  {
						global.pla_turn_selector =+2
					}
					else 
						global.pla_turn_selector = 0
					}
				if keyboard_check_pressed(vk_down) {
					if global.pla_turn_selector < 1  {
						global.pla_turn_selector =-2
					}
					else 
						global.pla_turn_selector = 3
					}	
				
				if global.confirm {
					global.pla_turn_state = 4
					}	
					
				if global.back {
				global.pla_turn_state = 1
				}	
			break;
			
			case 1:
				x = 40
				switch global.pla_turn_selector {
					case 0: y = global.box_y - global.box_height + 5; break;
					case 1: y = global.box_y - global.box_height + 35; break;
					case 2: y = global.box_y - global.box_height + 65 break;
					case 3: y = global.box_y - global.box_height + 95; break;
				}
					if keyboard_check_pressed(vk_up) {
						if global.pla_turn_selector > 0  {
							global.pla_turn_selector--
						}
						else {
							global.pla_turn_selector = 3
						}
					}
				if keyboard_check_pressed(vk_down) {
					if global.pla_turn_selector < 3  {
						global.pla_turn_selector++
					}
					else {
						global.pla_turn_selector = 0
					}
				}
				if global.confirm {
					if global.game_buttons == 1 {
						global.pla_turn_state = 3
						switch global.pla_weaponlist[global.pla_weapon][0] {
							case "WS": global.summonattackrecticles("WS", 1, 5, 0) break;	
						}
					
					}
					else {
						global.pla_turn_state = 2
					}
				}	
			if global.back {
				global.pla_turn_state = 0
			}	
		break;
		
		case 3: visible = false; break;
		case 4: visible = false; break;
	}	
}
//function for IV frames
	if global.pla_curinv > 0 {
	image_speed = 1
	}
	else {
	image_speed = 0
	image_index = 0
	}
//end



global.summonattackrecticles = function(type, recticals, spd, delay) {
		var i = 0
		global.pla_fight_rects = 0
		if rectdelay >= delay+round(random_range(-3, 3)) {
			if (i < recticals) {
				i++
				rectdelay = 0
				recti[i] = instance_create_depth(0, global.box_y-global.box_height+5, 99999, obj_fightrect)
				recti[i].type = type
				recti[i].spd = spd
			}
			else {
				return 
			}
		}
		else { 
			rectdelay++
		}
}

