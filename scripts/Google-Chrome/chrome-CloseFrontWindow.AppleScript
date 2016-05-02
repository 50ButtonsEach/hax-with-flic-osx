#!/usr/bin/osascript
if running of application "/Applications/Google Chrome.app" is true then
	tell application "/Applications/Google Chrome.app"
		close of front window
	end tell
end if