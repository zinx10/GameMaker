/// @description Initialize Variables

//////////////////////////////////////////////////////////////////////////
/// Emitter Settings
//////////////////////////////////////////////////////////////////////////

// Set target
target = self;
// Create sound engine
emitter_main = audio_emitter_create();
// Set sound engine to target
audio_emitter_position(emitter_main, target.x, target.y, 0);
// Set orientation
audio_listener_orientation(0, 1, 0, 0, 0, 1);



//////////////////////////////////////////////////////////////////////////
/// Create Audio Group Flags
//////////////////////////////////////////////////////////////////////////

// Create Audio Group Enumerator
enum audio_group {
	music = 1,
	music_effect = 2,
	sound = 3
};
// Create Audio Group Flag Array
ag_loaded = [
	true,	// Default Audio Group
	false,	// Music Audio Group
	false,	// Music Effect Audio Group
	false	// Sound Effect Audio Group
];



//////////////////////////////////////////////////////////////////////////
/// Load Audio Groups
//////////////////////////////////////////////////////////////////////////

show_debug_message("0: "+string(audio_group_name(0)));
show_debug_message("1: "+string(audio_group_name(1)));
show_debug_message("2: "+string(audio_group_name(2)));
show_debug_message("3: "+string(audio_group_name(3)));

// Music
audio_group_load(ag_music);
// Music Effects
audio_group_load(ag_music_effect);
// Sound Effects
audio_group_load(ag_sound);


