/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (keyboard_check(vk_up)){
	global.checkpoint = 1;
	global.numSpawnX = x;
	global.numSpawnY = y;
	show_debug_message("checkpoint 1");
}
