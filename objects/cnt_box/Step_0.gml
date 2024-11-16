/// @description controlbox


boxdown = boxdown - (((global.boxheight) + boxdown)/global.boxspd)
boxup = boxup - (((global.boxheight) - boxup)/global.boxspd)
boxright = boxright - (((global.boxwidth) + boxright)/global.boxspd)
boxleft = boxleft - (((global.boxwidth) - boxleft)/global.boxspd)
