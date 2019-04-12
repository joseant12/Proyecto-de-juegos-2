if (x < oPlayer.x + 1000) {
	x = x + 1;
	if (x mod 12){
		clouds_up = not clouds_up;
	}
	if (clouds_up) {
		y = y + 1;
	} else {
		y = y - 1;
	}
	if (image_alpha < global.clouds_filter) {
		image_alpha += 0.001
	}
} else {
	instance_destroy();	
}