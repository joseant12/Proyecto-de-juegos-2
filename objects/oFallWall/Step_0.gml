/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (falling){
	y += global.oFallWall_falling_speed
	if (y > global.Max_Y_resolution){
		instance_destroy();
	}
}