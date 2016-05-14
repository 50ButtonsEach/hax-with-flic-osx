#!/usr/bin/osascript
# Play or Pause the current playlist item

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		play
	end tell
end if