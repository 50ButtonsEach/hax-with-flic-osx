# hax-with-flic-osx

This is a basic Flic app for mac. This application allows you to execute your own scripts on Flic button presses. This requires OSX 10.10 or above operating systems running on a machine that supports Bluetooth Low Energy. It is unclear exactly which machines that have Bluetooth Low Energy support, but if it is of model year 2013 or later then it should be fine.

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

1. Drag and drop the application to your applications folder
2. You may have to control click on it to launch it
3. Press on the flic icon in the menu bar and scan for your Flic

**Configuration**

1. Press “Configure scripts..”
2. Add search paths to the scripts you want to launch

Please note that some actions (like window resizing) requires that you add “Hack with flic” to the accessibility list under the privacy settings of your mac.

**Scripts**

We have added a few pre-made scripts that you can find in this repository. All of them are very small and should be self explanatory. If you have any cool scripts of your own that you believe could be useful to other people, then feel free to submit a pull request on this repository.