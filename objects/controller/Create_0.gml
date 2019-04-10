if (! variable_global_exists("checkpoint")){
	global.numSpawnX = 100;
	global.numSpawnY = 655;
} 
instance_create_layer(global.numSpawnX, global.numSpawnY, "Player", oPlayer);
instance_create_layer(512,384,"Player",oCamera);