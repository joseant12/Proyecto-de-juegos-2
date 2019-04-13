if (! variable_global_exists("checkpoint") || !global.checkpoint ){
	global.numSpawnX = 28;
	global.numSpawnY = 380;
} 
instance_create_layer(global.numSpawnX, global.numSpawnY, "Player", oPlayer);
instance_create_layer(512,364,"Player",oCamera);