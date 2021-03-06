event_inherited();

//---------------------------------------------------------------
// Play sound on emitter.
// This is different from original source.
if (!sndPlaying) {
	audio_play_sound_on(sndEmit, sndRiver, true, 1);
	sndPlaying = true;
}

// Allow to be destroyed once sound is out of earshot.
if (distance_to_object(oPlayer) > sndMaxDist) {
	canDestroy = true;
}

// Move the emitter with the river.
audio_emitter_position(sndEmit, x, y, 0);

// Drop off sound faster when object is behind player.
if (!behindPlayer and x < oPlayer.x) {
	show_debug_message("River " + string(id) + " is now behind player. Dropping off sound.")
	sndMaxDist /= 2;
	sndDropoffDist = sndMaxDist/2;
	audio_emitter_falloff(sndEmit, sndDropoffDist, sndMaxDist, 1);	
	behindPlayer = true;
}
//---------------------------------------------------------------