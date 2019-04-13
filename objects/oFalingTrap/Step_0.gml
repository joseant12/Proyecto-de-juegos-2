if (global.active_falling_trap){
	if (falling){
		y = y + vsp;	
	} else if (oPlayer.x > x-10 && oPlayer.x < x+10){
		if (Y_base > 0 && oPlayer.y < Y_base) {
			falling = true;	
		} else if (Y_base < 0 && oPlayer.y > 728 + Y_base) {
			falling = true;	
		}
	}
	if (y > global.Max_Y_resolution){
		instance_destroy();	
	}
}