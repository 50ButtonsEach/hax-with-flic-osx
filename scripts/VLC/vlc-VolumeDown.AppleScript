#!/usr/bin/osascript
# Decrease volume by one step. There are a total of 32 steps.
# If you want to decrease the volume more on each execution then just uncomment the second volumeDown below.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		volumeDown
		# Uncomment next line for more decrease..
		# volumeDown
	end tell
end if