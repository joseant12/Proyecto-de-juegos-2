if ( !global.checkpoint ){
	global.numSpawnX = 1155;
	global.numSpawnY = 508;
} 
instance_create_layer(global.numSpawnX, global.numSpawnY, "Player", oPlayer);
instance_create_layer(512,384,"Player",oCamera);