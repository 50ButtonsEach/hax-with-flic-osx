#!/usr/bin/osascript
set currdate to (current date) as Unicode text
set the clipboard to currdate
tell application "System Events"
	keystroke "v" using {command down}
end tell
