#!/usr/bin/osascript
# Jump to next item in playlist.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		next
	end tell
end if