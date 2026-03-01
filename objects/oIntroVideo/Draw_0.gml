var w = 1380;
var h = 800;
var _videoData = video_draw();
var _videoStatus = _videoData[0];

if(_videoStatus == 0) {
	var _surf = _videoData[1];
	//draw_surface(_surf, 50, 50);
	draw_surface_stretched(_surf, 0, 0, w, h);
}

if(_videoStatus == -2) {
	show_debug_message("Entered Main room");
	video_close();
	room_goto(Main);
}