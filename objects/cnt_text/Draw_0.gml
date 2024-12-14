/// @description Draw...

var tempcolor = color
var curx = 0
var cury = 0
var i = 0

if (i < letter) {
	i++
	if string_char_at(text, i+1) == "`" {
		switch string_char_at(text, i+2) {
			case "R": tempcolor = c_red break;
			case "O": tempcolor = c_orange break;
			case "Y": tempcolor = c_yellow break;
			case "G": tempcolor = c_green break;
			case "B": tempcolor = c_blue break;
			case "P": tempcolor = c_purple break;
			case "C": tempcolor = c_aqua break;
			case "W": tempcolor = c_white break;
			case "D": tempcolor = color break;
		}
		i += 2
	}
	draw_set_color(tempcolor)
	draw_set_font(font)
	
	if string_char_at(text, i+1) = "|" {
		curx = 0
		cury += 10
	}
	if string_char_at(text, i+1) == "$" {
		delay = real(string_char_at(text, i+2))
		i += 2
	}
	draw_text(x+curx, y+cury, string_char_at(text, i+1))
	curx += space
}
	
	if writing {
		curdel++
		if curdel >= delay {
			curdel = 0
			letter++
		}
		
		if string_char_at(text, letter) == "." or string_char_at(text, letter) == "?" or string_char_at(text, letter) == "!" {
		curdel = -25
		}
		if string_char_at(text, letter) == "," or string_char_at(text, letter) == ";" {
		curdel = -10
		}
		if letter == string_length(text) {
			writing = false
		}
		if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_shift) or keyboard_check(ord("C")) {
			letter = string_length(text) 
			writing = false
		}
		
	}
	else {
		if (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or keyboard_check(ord("C"))) and branching {	
		letter = 0
		delay = 2
		curdel = 0
		}
	if letter == string_length(text) {	
	if variable_instance_exists(id, "queue") {
		if queuecur >= queue {
			instance_destroy()
			exit;
		}
		text = queue[queuecur]
	}
	else {	
		text = "||END||"
	}
	}
	writing = true
	if text == "" or text == "||END||" {
		instance_destroy()	
	}
	curqueue++
}
