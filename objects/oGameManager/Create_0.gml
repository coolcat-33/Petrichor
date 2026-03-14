global.player = undefined;
global.hp = 50;
global.name = "";
global.max_hp = 50
global.timerOver = false;
global.gold = 0;

global.dialogue = 0;
global.paused = true;

global.font = font_add("block-sans-serif.ttf", 32, false, false, 0, 255);
if (global.player == oPlayerW) {
	global.name = "Juliet";
} else if (global.player == oPlayer) {
	global.name = "Domovoi";
}

global.room = 1;

function drawPlayer() {
	with (global.player) {
		instance_destroy();
	}
	var _player_instance = instance_create_layer(50, 48, "Characters", global.player);
}