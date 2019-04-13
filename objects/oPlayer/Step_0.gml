/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Movimiento del jugador
var move = key_right - key_left;
hsp = move * walksp;
fall = 0;
vsp = vsp + grv;

//Cambios de sprites
if (place_meeting(x,y+1,oWall) || place_meeting(x,y+1,oIceWall) )
{
	jumps = jumpsmax;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sprite;
	} else {
		sprite_index = Running;
	}
} else {
	sprite_index = Jumping;
	image_speed = 0;
	if (sign(vsp) > 0) {
		image_index = 1;
	} else {
		image_index = 0;	
	}	
}

//Salto del jugador
if ((key_jump) && (jumps > 0))
{
	jumps -= 1
	vsp = -jumpdistance
}

//Colisiones horizontales
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
} else if (place_meeting(x+hsp,y,oJgWall))
{
	while(!place_meeting(x+sign(hsp),y,oJgWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
} else if (place_meeting(x+hsp,y,oIceWall))
{
	while(!place_meeting(x+sign(hsp),y,oIceWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
} else if (place_meeting(x+hsp,y,oFallWall)){
	while(!place_meeting(x+sign(hsp),y,oFallWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

//Colisiones verticales
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	if (!place_meeting(x+hsp,y,oWall)){
		vsp = 0;
	}
} else if (place_meeting(x,y+vsp,oJgWall))
{
	while(!place_meeting(x,y+sign(vsp),oJgWall))
	{
		y = y + sign(vsp);
	}
	if (place_meeting(x+hsp,y,oJgWall)){
		vsp = 0;
	} else {
		vsp = 0;
	}
} 
else if(place_meeting(x,y+vsp,oFallWall)) {
	while(!place_meeting(x,y+sign(vsp),oFallWall))
	{
		y = y + sign(vsp);
	}
	jumps = 1;
	fall = 0;
	if (global.falling){
		fall = 0.5;
	}
	vsp = 0;
}

//Interacción con el hielo
if (place_meeting(x,y+vsp,oIceWall))
{
	while(!place_meeting(x,y+sign(vsp),oIceWall))
	{
		y = y + sign(vsp);
	}
	
	if (key_left)
	{
		ice_friction = -global.ice_friction_speed;
	} else if (key_right) {
		ice_friction = global.ice_friction_speed	
	}
	
	if (ice_friction != 0)
	{
		//va reduciendo la velocidad de desplazamiento inercial del hielo.
		ice_friction -= sign(ice_friction) * 0.1;
	}
	
	vsp = 0;
} else {
	ice_friction = 0;	
}

//Agarre de plantas
if (place_meeting(x-1,y,oJgWall) && key_left)
{
	vsp = global.jg_wall;
	jumps = jumpsmax;
} else if (place_meeting(x+1,y,oJgWall) && key_right)
{
	vsp = global.jg_wall;
	jumps = jumpsmax;
}

if(y>768){
	//Respawn
	//with (all) { x=xstart; y=ystart;}
	instance_destroy();
	room_restart();
}


y = y + vsp + fall
x = x + hsp + ice_friction
if (hsp != 0) image_xscale = sign(hsp);