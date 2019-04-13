if ( !global.checkpoint ){
	global.numSpawnX = 1413;
	global.numSpawnY = 222;
} 
instance_create_layer(global.numSpawnX, global.numSpawnY, "Player", oPlayer);
instance_create_layer(512,384,"Player",oCamera);