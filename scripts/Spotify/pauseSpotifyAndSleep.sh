#!/bin/sh

# Pause Spotify and Sleep 
#  - pauses Spotify if a track is currently playing.
#  - puts mac to sleep 

state=`osascript -e 'tell application "Spotify" to player state as string'`;
if [ $state = "playing" ]; then
  osascript -e 'tell application "Spotify" to playpause';
fi

pmset displaysleepnow

