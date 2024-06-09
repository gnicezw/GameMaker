/// @description Insert description here
// You can write your code in this editor
var fl_cruise_speed = 0.05;
if (keyboard_check(vk_right))
{
	
	image_angle = image_angle - 5;
	motion_set(image_angle, speed); //resume motion in new heading (if already moving)
}

if (keyboard_check(vk_left))
{
	image_angle = image_angle + 5;	
	motion_set(image_angle, speed); //resume motion in new heading (if already moving)
}

if(keyboard_check(vk_up))
{
	motion_add(image_angle, fl_cruise_speed); 	
}
//If space is pressed, create a new bullet in the instances layer
//at the x,y coordinates where the ship is. 
if(keyboard_check_pressed(vk_space))
{
	//return the instance ID to inst variable
	var inst = instance_create_layer(x, y, "Instances", Obj_Bullet);
	inst.direction = image_angle; //set bullet direction to ship's direction
}	
//if the down key is pressed then slow down
if(keyboard_check(vk_down))
{
	motion_add(image_angle,(-1 * fl_cruise_speed)); //bleed 0.05 off the speed
}

move_wrap(true, true, sprite_width/2);