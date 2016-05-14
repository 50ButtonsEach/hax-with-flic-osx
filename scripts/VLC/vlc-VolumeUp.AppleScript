#!/usr/bin/osascript
# Increase volume by one step. There are a total of 32 steps.
# If you want to increase the volume more on each execution then just uncomment the second volumeUp below.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		volumeUp
		# Uncomment next line for more increase..
		# volumeUp
	end tell
end if