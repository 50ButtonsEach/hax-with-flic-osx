#hax-with-flic-osx 0.2.3

**Changes**

* Added support for multiple buttons.
* Improved button connectivity.
* Script text fields now truncated on the left to improve readability.

#hax-with-flic-osx 0.1.6

Minor bug fix release.

#hax-with-flic-osx 0.1.5

Minor bug fix release.

**Changes**

* The app will now tell you if Bluetooth Low Energy is not supported on this computer when you start a scan.

**Issues Fixed**

* [Issue #6](https://github.com/50ButtonsEach/hax-with-flic-osx/issues/6) Queued click events that was generated when the button was disconnected will now be delivered if they are less than 5 seconds old. This change is added to avoid click event loss in case the connection was dropped at the time of the button press. Typically if the button is disconnected when it is pressed, then it will connect immediately once pressed if within range.

* [Issue #5](https://github.com/50ButtonsEach/hax-with-flic-osx/issues/5) If you have custom trust settings on your certificates then it could is some cases cause the initial button unlock during scan to fail due to certificate pinning error. This has been fixed.

