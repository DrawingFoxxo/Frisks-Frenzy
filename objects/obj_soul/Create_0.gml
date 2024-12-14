/// @description SOUL STUFF 
// Delay stuff for... attacks...
rectdelay = 0

// Dynamic Vars, change at random.
global.soul_spd = 0
global.soul_atk = 0
global.soul_def = 0
global.soul_inv = 0
global.soul_perk = 0

// Player Base Vars, change as you LVL up or with equips.
global.pla_lv = 1
global.pla_hp = 20
global.pla_mxhp = 20
global.pla_def = 10
global.pla_atk = 10
global.pla_mxinv = 15
global.pla_curinv = 0
global.pla_basespd = 4
global.pla_expmx = 10
global.pla_weapon = 0
global.pla_fight_score = 0
global.pla_fight_rects = 1
global.pla_weaponlist = ["ST", "TK", "TG", "BS", "TN", "BP", "EG", "WD", "RK"] //Type/Recticles/Weapon Name/ShortName (0 = return)/Serious Name (0 = return)/AT
global.pla_weaponlist[0] = ["SL", "Stick", "0", "0", "0"] //Weak Slash Type.
global.pla_weaponlist[1] = ["QS", "Toy Knife", "0", "0", "3"] // Quick Slash Type
global.pla_weaponlist[2] = ["SP", "Tough Glove", "TuffGlove", "Glove", "5"] //Spam Type
global.pla_weaponlist[3] = ["MT", "Ballet Shoes", "BallShoes", "Shoes", "7"] //Multi Type
global.pla_weaponlist[4] = ["MT", "Torn Notebook", "TornNotBo", "Notebook", "2"] 
global.pla_weaponlist[5] = ["MT", "Burnt Pan", "0", "Pan", "10"]
global.pla_weaponlist[6] = ["GN", "Empty Gun", "0", "Empty Gun", "12"] //Gun Type.
global.pla_weaponlist[7] = ["SL", "Worn Dagger", "WornDag", "W. Dagger", "19"] //Blunt Slash. Buffed because late game.
global.pla_weaponlist[8] = ["SL", "Real Knife", "ReKnife", "Knife", "32"]


//Finally, the movement variables.
xspd = 0
yspd = 0
curspd = 0
slow = false