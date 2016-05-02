#!/usr/bin/osascript
set d to the clipboard as «class utf8»
set fn to choose file name
set fid to open for access fn with write permission
write d to fid
close access fid