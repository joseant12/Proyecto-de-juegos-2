if ( !global.checkpoint ){
	global.numSpawnX = 10;
	global.numSpawnY = 55;
} 
instance_create_layer(global.numSpawnX, global.numSpawnY, "Player", oPlayer);
instance_create_layer(512,384,"Instances",oCamera);