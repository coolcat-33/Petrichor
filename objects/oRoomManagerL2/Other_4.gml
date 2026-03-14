if (global.room == 2) {
	global.gold -= coins_collected;
	var _player_instance = instance_create_layer(50, 48, "Characters", global.player);


		var _turret_instances = get_all_instances_on_layer("Turrets");
		var shuffled_turrets = array_shuffle(_turret_instances);
		var turret_instance_1 = shuffled_turrets[0];
		var turret_instance_2 = shuffled_turrets[1];
		
		var turret_1 = instance_create_layer(turret_instance_1.x, turret_instance_1.y, "Turrets", oTurret);
		if (turret_1.x > 450) {
			turret_1.image_xscale = -1;
			var bullet_1 = instance_create_layer(turret_1.x-50, turret_1.y, "Turrets", oBullet);
			bullet_1.speed = -8;
		} else {
			var bullet_1 = instance_create_layer(turret_1.x+50, turret_1.y, "Turrets", oBullet);
		}


		var turret_2 = instance_create_layer(turret_instance_2.x, turret_instance_2.y, "Turrets", oTurret);
		if (turret_2.x > 450) {
			turret_2.image_xscale = -1;
			var bullet_2 = instance_create_layer(turret_2.x-50, turret_2.y, "Turrets", oBullet);
			bullet_2.speed = -8;
		} else {
			var bullet_2 = instance_create_layer(turret_2.x+50, turret_2.y, "Turrets", oBullet);
		}

		var _platform_instances = get_all_instances_on_layer("Platform");
		var shuffled_array = array_shuffle(_platform_instances);
	
		var coin_instance_1 = shuffled_array[0];
		var coin_instance_2 = shuffled_array[1];
		var coin_instance_3 = shuffled_array[2];
		var coin_instance_4 = shuffled_array[3];
		var coin_instance_5 = shuffled_array[4];
	
		for (var i = 0; i < 8; i++) {
			instance_create_layer(shuffled_array[i].x, shuffled_array[i].y - 16, "Spawns", oCoin);
		}
	
}


