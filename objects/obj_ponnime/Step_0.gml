#region CONTROLES
key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check(vk_space)
key_shoot = keyboard_check_pressed(ord("X"));
#endregion
#region MOVIMENTAÇÃO
var move = key_right - key_left

hspd = move * spd;

vspd = vspd + grv;

if (hspd != 0) image_xscale = sign(hspd);

if place_meeting(x+hspd,y,obj_wall)
{
while(!place_meeting(x+sign(hspd),y,obj_wall))
 {
x = x +  sign(hspd)
 }
 hspd = 0;
}
x = x + hspd;

if place_meeting(x,y+vspd,obj_wall)
{
while(!place_meeting(x,y+sign(vspd),obj_wall))
 {
y = y +  sign(vspd)
 }
 vspd = 0;
}
y = y + vspd;

if place_meeting(x,y+1,obj_wall) and key_jump

{
vspd -=9;
}
#endregion
#region TIRO

var flipped = direction
var gun_x = x+4*(flipped)
var _xx = x + lengthdir_x(15,image_angle)
var y_offset = lengthdir_y(-20, image_angle)

if key_shoot and global.bullets > 0
{
with (instance_create_layer(_xx,y+10,"Shoot", obj_shoot))
{
global.bullets--;
	speed = 10;
direction = -90 + 90 * other.image_xscale;

image_angle = direction;
}
}
#endregion

