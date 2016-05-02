#!/usr/bin/osascript
if running of application "/Applications/Google Chrome.app" is true then
	tell application "/Applications/Google Chrome.app"
		reload of active tab of front window
	end tell
end if