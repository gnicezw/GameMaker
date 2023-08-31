/// @description Insert description here
// You can write your code in this editor



//when it hits an asteroid, bullet should self destruct
instance_destroy(); 
//also destroy the target asteroid
with(other)
{
	instance_destroy();
	//query how big this asteroid was and split it to smaller chunks
	if(sprite_index == Spr_Asteroid_Huge)
	{
		repeat(2) //create 2 smaller asteroids
		{
			var new_asteroid=instance_create_layer(x,y,"Instances",Obj_Asteroid);
			//make the new asteroids mediuim sized
			new_asteroid.sprite_index = Spr_Asteroid_Medium;
		}
	}
	else if(sprite_index = Spr_Asteroid_Medium)
	{
		repeat(2)
		{
			var new_asteroid=instance_create_layer(x,y,"Instances", Obj_Asteroid);
			new_asteroid.sprite_index = Spr_Asteroid_Small;
		}
	}
}