#!/usr/bin/osascript
# Step forward. The step width can be changed below.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		# Step width (1=extraShort, 2=short, 3=medium, 4=long).
		step forward 2
	end tell
end if