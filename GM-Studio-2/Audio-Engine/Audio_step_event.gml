/// @description Audio update

//////////////////////////////////////////////////////////////////////////
/// Emitter Update
//////////////////////////////////////////////////////////////////////////

// Fix Audio Engine
if(!audio_emitter_exists(emitter_main)) {
	emitter_main = audio_emitter_create();
}

// Follow target
audio_listener_position(target.x, target.y, 0);
audio_emitter_position(emitter_main, target.x, target.y, 0);



//////////////////////////////////////////////////////////////////////////
/// Audio Group Update
//////////////////////////////////////////////////////////////////////////

// Update flags
for(var _i = 0; _i < array_length_1d(ag_loaded); _i++) {
	if(!ag_loaded[_i]) {
		ag_loaded = audio_group_is_loaded(_i + 1);
	}
	else {
		show_debug_message("i: "+string(ag_loaded[_i]));
	}
}
