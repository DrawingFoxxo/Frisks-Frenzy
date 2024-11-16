/// @description Soul Stuff.
// function outside of a menu.
	curspd = global.pla_basespd+global.soul_spd 
	xspd = keyboard_check(vk_right) - keyboard_check(vk_left)
	yspd = keyboard_check(vk_down) - keyboard_check(vk_up) /*GM is a bitch to me...*/ 
	if keyboard_check(vk_shift) or keyboard_check(ord("X")) {
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
//end


//function for IV frames
	if global.pla_curinv > 0 {
	image_speed = 1
	}
	else {
	image_speed = 0
	image_index = 0
	}
//end