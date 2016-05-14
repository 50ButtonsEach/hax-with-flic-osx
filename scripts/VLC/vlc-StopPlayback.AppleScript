#!/usr/bin/osascript
# Stop playing the current playlist item.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		stop
	end tell
end if