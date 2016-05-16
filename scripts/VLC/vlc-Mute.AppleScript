#!/usr/bin/osascript
# Mute or unmute the VLC audio playback.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		mute
	end tell
end if