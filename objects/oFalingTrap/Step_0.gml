if (falling){
	y = y + vsp;	
} else if (oPlayer.y < Y_base && oPlayer.x > x-10 && oPlayer.x < x+10){
	falling = true;	
}
if (y > global.Max_Y_resolution){
	instance_destroy();	
}