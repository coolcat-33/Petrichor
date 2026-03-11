with (other) {
	instance_destroy(other);
	var _trap_instance = instance_create_layer(other.x, other.y, "Spawns", oTrap);
}