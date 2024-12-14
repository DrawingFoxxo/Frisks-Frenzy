/// @description Here we go.
// Oh yeah, cases. I remember those...
// Figured out that I use them like THIS.
draw_sprite(spr_ut_buttons, 0, 30, 400) //FIGHT
draw_sprite(spr_ut_buttons, 1, 180, 400) //ACT
draw_sprite(spr_ut_buttons, 2, 330, 400) //ITEM
draw_sprite(spr_ut_buttons, 3, 480, 400) //MERCY

switch global.game_buttons {
	case 1:	draw_sprite(spr_ut_buttons, 4, 30, 400) break //Draw a selected FIGHT
	case 2:	draw_sprite(spr_ut_buttons, 5, 180, 400) break //Draw a selected ACT
	case 3:	draw_sprite(spr_ut_buttons, 6, 330, 400) break //Draw a selected ITEM
	case 4:	draw_sprite(spr_ut_buttons, 7, 480, 400) break //Draw a selected MERCY
}

draw_set_font(fnt_mnc)
draw_set_color(c_white)
draw_text(25, 365, global.pla_name)
draw_text(125, 365, "LV " + string(global.pla_lv))
if global.pla_mxhp < 100 {
	draw_text(global.pla_mxhp*1.2+290, 365, string(global.pla_hp) + "/" + string(global.pla_mxhp))
}
else {
	draw_text(150+290, 365, string(global.pla_hp) + "/" + string(global.pla_mxhp))
}
draw_set_font(fnt_wonder)
draw_text(245, 365, "HP")
if global.pla_mxhp < 100 {
	draw_set_color(c_red)
	draw_rectangle(280, 367, 280+global.pla_mxhp*1.2, 383, false)
	draw_set_color(c_yellow)
	draw_rectangle(280, 367, 280+global.pla_hp*1.2, 383, false)
}
else {
	draw_set_color(c_red)
	draw_rectangle(280, 367, 280+150, 383, false)
	draw_set_color(c_yellow)
	draw_rectangle(280, 367, 280+((global.pla_mxhp/global.pla_hp)*1.2-150), 383, false)	
}
if global.pla_turn_state == 3 {
	draw_sprite(spr_ut_fighttarget, 0, 45, global.box_y-global.box_height+5) //Fight Target
}