/// @description Insert description here
// You can write your code in this editor

sprite_index = choose(Spr_Asteroid_Small, Spr_Asteroid_Medium, Spr_Asteroid_Huge); //randomly chooses a sprite
direction = irandom_range(0,359);  //randomly sets the direction of movement
image_angle = irandom_range(0,359);  //randomly set angle sprite is drawn
speed = 1;  //set the speed of movement