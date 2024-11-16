/// @description Oh dear...
// Draw Box

draw_set_color(c_white)
draw_rectangle(boxleft-5, boxup-5, boxright+5, boxy+5, true)
draw_rectangle(boxleft-4, boxup-4, boxright+4, boxy+4, true)
draw_rectangle(boxleft-3, boxup-3, boxright+3, boxy+3, true)
draw_rectangle(boxleft-2, boxup-2, boxright+2, boxy+2, true)
draw_rectangle(boxleft-1, boxup-1, boxright+1, boxy+1, true)
obj_soul.x = clamp(obj_soul.x, boxleft-2, boxright-16)
obj_soul.y = clamp(obj_soul.y, boxup-2, boxy-17)
draw_set_color(c_black)
draw_rectangle(boxleft, boxup, boxright, boxy, true)


