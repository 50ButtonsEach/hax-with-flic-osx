#!/usr/bin/osascript
tell application "Finder"
	set {screen_top, screen_left, screen_width, screen_height} to bounds of window of desktop
end tell

tell application "System Events"
	set myFrontMost to name of first item of (processes whose frontmost is true)
end tell

tell application "System Events"
	tell process myFrontMost
		
		try
			set position of window 1 to {0, 0}
			set size of window 1 to {screen_width, screen_height}
		on error errStr
			return errStr
		end try
	end tell
end tell
