/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (keyboard_check(vk_up) && !global.checkpoint){
	global.checkpoint = true;
	global.numSpawnX = x;
	global.numSpawnY = y;
	global.ice_friction_speed += 3
	global.jg_wall += 1;
	global.clouds_filter += 0.2;
	global.active_falling_trap = true;
}
