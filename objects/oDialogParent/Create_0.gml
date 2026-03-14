dialog = new Dialogue();
key_next = vk_enter;
showing_dialog = false;
current_dialog = [];
alpha = 0;

if (global.restarted) {
	instance_destroy();
}