# hax-with-flic-osx

This is a basic Flic app for Mac. It is in an Alpha stage and its functionality may change a lot in future versions without notice. This application allows you to execute your own scripts on Flic button presses. This requires OSX 10.10 or above operating systems running on a machine that supports Bluetooth Low Energy. It is unclear exactly which machines that have Bluetooth Low Energy support, but Apple supposedly started the transition around 2012. Running the following in a terminal will output the Bluetooth LMP Version:

	system_profiler -detailLevel full SPBluetoothDataType | grep "LMP Version"

Version 0x6 was the first one that supported Low Energy, but we cannot guarantee that this will be correct for all computers. We have noticed that using a Bluetooth Low Energy compatible USB dongle can also work in some cases.

**Important notice**

Since this application will blindly execute the scripts that you tell it to execute, it is very important that you make sure that you know what these scripts do. You need to verify, or have verified by someone who you trust, that the code being executed is not malicious in any way. We will not take responsibility for any harm that you may cause to your machine. 

**How it works**

This application will allow you to connect one Flic button to your Mac computer and then select which scripts that you wish to execute on `click`, `double click`, `hold`, `up` and `down`.

**Supported script files**

The following files are supported:

* Automator workflows (`.workflow`)
* All files that are executable (`chmod +x a_script.py`) and contains a shebang on its first line (`#!/some/path`)

Some examples of supported files:

* AppleScript - `.scpt, .AppleScript` - `#!/usr/bin/osascript`
* Shell Script - `.sh` - `#!/bin/sh`
* Ruby Script - `.rb` - `#!/usr/bin/env ruby`
* Python Script - `.py` - `#!/usr/bin/env python`

This can of course vary a bit depending on how your Mac is configured.

**Installation**

1. Download the repository by pressing the "Download ZIP" button. 
2. Mount the dmg file and drag and drop the HaxWithFlic.app to your applications folder.
3. When launching the application from the applications folder the first time it will ask you if you want to open a file that was downloaded from the internet. Press open.
4. Press on the flic icon in the menu bar and start using the application. For example, press scan if you want to add a new Flic.

**Configuration**

1. Press “Configure scripts..”.
2. Add search paths to the scripts you want to launch.

Please note that some actions (like window resizing) requires that you add “HackWithFlic” to the accessibility list under the privacy settings of your mac. You can turn off the audio notifications by unchecking the "Play audio" option. If you are using the button for tasks that require very low latency then you can lower the latency by checking the "Low latency mode" option, but remember that this will decrease the battery life of your Flic significantly. The low latency mode reduces the latency down to 45ms from the normal 280ms. Notice, however, that these are worst case times and that the expected time is about half of that. The button down event always arrives before any other event, so it can be used for time critical applications.

**Scripts**

We have added a few pre-made scripts that you can find in this repository. All of them are very small and should be self explanatory. If you have any cool scripts of your own that you believe could be useful to other people, then feel free to submit a pull request on this repository.


# Scripts

**Clipboard-Tools**

* `removeDuplicateLines.sh` Goes through your clipboard and removes all duplicate lines.
* `reverseLines.sh` Goes through your clipboard and reverses the characters on each line.
* `sortLines.sh` Goes through your clipboard and sorts all lines.
* `textToSpeech.sh` Takes the contents of your clipboard and plays it using text to speech.

**Desktop-Tools**

* `interactiveScreenshot.sh` Lets you select an area of your screen that you want to take a screenshot of. Resulting image is saved to your desktop folder.
* `maximizeApplicationWindow.sh` Maximizes the size of the frontmost window of the active application.
* `screenshot.sh` Takes a screenshot of your full desktop. Resulting image is saved to your desktop.
* `splitApplicationWindows.AppleScript` Resizes the two frontmost windows of your active application and displays them side by side.

**Finder-Tools**

* `copyPathToClipboard.AppleScript` Copies the path of the selected item in your frontmost finder window to your clipboard.
* `moveSelectedFilesToFolder.AppleScript` Lets you move the selected items in your frontmost finder window to a different location.

**General**

* `currentDateToClipboard.AppleScript` Copies the current time and date to your clipboard.
* `currentDateToClipboardAndPaste.AppleScript` Same as above but also pastes to your active application.
* `displayCurrentDateInDialog.AppleScript` Displays a dialog window with the current time and date.
* `saveClipboardToFile.AppleScript` Lets you save the contents of the clipboard to a new file at a location that you choose.
* `startCalculator.AppleScript` Launches the Mac Calculator app.
* `displaysleep.sh` Shuts down the display, system continues to run in the background. (Added by [jonashoechst](https://github.com/jonashoechst))
* `sleep.sh` Puts system to sleep, no network working anymore. (Added by [jonashoechst](https://github.com/jonashoechst))

**Google-Chrome**

* `chrome-CloseFrontWindow.AppleScript` Closes the frontmost chrome window. This closes all tabs in that window.
* `chrome-Reload.AppleScript` Reload the selected tab of the frontmost chrome window.
* `chrome-ShowSourceFile.AppleScript` Opens a new tab showing the source code of the selected tab of the frontmost chrome window.

**Hue**

* `hue_switch.sh` Toggle all your Philips Hue lights on/off. (Added by [patricks](https://github.com/patricks))

**Keynote**

* `keynoteNextSlide.sh` Display next slide. This actually only simulates a keypress on the space key.
* `keynotePreviousSlide.sh` Display previous slide. This simulates a press on the p-key.

**Spotify**

* `spotify-NextTrack.AppleScript` Moves to the next track. Also works with Spotify connect.
* `spotify-PlayPause.AppleScript` Play or Pause the music. Also works with Spotify connect.
* `spotify-PreviousTrack.AppleScript` Moves to the previous track. Also works with Spotify connect.

**VLC**

* `vlc-Fullscreen.AppleScript` Toggle fullscreen.
* `vlc-Mute.AppleScript` Toggle mute.
* `vlc-NextPlaylistItem.AppleScript` Jump to next item in playlist.
* `vlc-PlayPause.AppleScript` Toggle play/pause.
* `vlc-PreviousPlaylistItem.AppleScript` Jump to previous item in playlist.
* `vlc-StepBackward.AppleScript` Step backward. Step length can be configured.
* `vlc-StepForward.AppleScript` Step forward. Step length can be configured.
* `vlc-StopPlayback.AppleScript` Stop the current playback.
* `vlc-VolumeDown.AppleScript` Decrease volume by one step. Step length can be configured.
* `vlc-VolumeUp.AppleScript` Increase volume by one step. Step length can be configured.


