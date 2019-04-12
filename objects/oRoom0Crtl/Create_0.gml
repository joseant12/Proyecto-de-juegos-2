if ( !global.checkpoint ){
	global.numSpawnX = 65;
	global.numSpawnY = 670;
} 
instance_create_layer(global.numSpawnX, global.numSpawnY, "Player", oPlayer);
instance_create_layer(512,384,"Player",oCamera);