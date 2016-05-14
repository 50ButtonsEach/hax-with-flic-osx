#!/usr/bin/osascript
# Step backward. The step width can be changed below.

if running of application "/Applications/VLC.app" is true then
	tell application "/Applications/VLC.app"
		# Step width (1=extraShort, 2=short, 3=medium, 4=long).
		step backward 2
	end tell
end if