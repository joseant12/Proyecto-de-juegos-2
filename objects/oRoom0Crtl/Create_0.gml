if ( !global.checkpoint ){
	global.numSpawnX = 32;
	global.numSpawnY = 712;
} 
instance_create_layer(global.numSpawnX, global.numSpawnY, "Player", oPlayer);
instance_create_layer(512,384,"Player",oCamera);