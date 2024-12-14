/// @description controlbox
function lineartween(target, cur, spd){
return ((target - cur)/spd)
}

boxy = global.box_y
boxx = global.box_x
boxup += lineartween(boxy-global.box_height, boxup, global.box_spd)
boxright += lineartween(boxx+global.box_width, boxright, global.box_spd)
boxleft += lineartween(boxx-global.box_width, boxleft, global.box_spd)
