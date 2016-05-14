#!/usr/bin/osascript
# Jump to previous item in playlist.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		previous
	end tell
end if