if ( !global.checkpoint ){
	global.numSpawnX = 29;
	global.numSpawnY = 710;
} 
instance_create_layer(global.numSpawnX, global.numSpawnY, "Player", oPlayer);
instance_create_layer(512,384,"Player",oCamera);