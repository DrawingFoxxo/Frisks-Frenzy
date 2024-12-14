/// @description Start a bttle


global.mnstr[0] = instance_create_depth(275, 75, 1, mstr_dummy)
global.pla_turn = true //Using this instead of 'state' for personal reasons.
global.pla_turn_state = 0 
global.pla_turn_subselect = 0
global.pla_turn_selector = 0 //Start from 0, go to 3
/* STATE: -1: Not your turn. 0: Option Select. 1: In a menu. 2: In a submenu. 3: FIGHTing. 4. In Text.