#!/usr/bin/osascript
# Toggle VLC fullscreen mode.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		fullscreen
	end tell
end if