# GMenuNext

[GMenuNext](https://github.com/pingflood/GMenuNext/) is a fork of [GMenu2X](http://mtorromeo.github.com/gmenu2x) developed to Retrogame RS-97, released under the GNU GPL license v2.


## Installation

Unpack the latest [Release](https://github.com/pingflood/GMenuNext/releases/) over your current GMenu2X directory, or download the latest binary and replace it in your device.

(Re)Boot your device and enjoy [GMenuNext](https://github.com/pingflood/GMenuNext/).


## Changelog

**2018.07.18** (*Codename: Low Carb.*)
* Updated Selector screen previews;
* Remove SDL_gfx dependecies by importing gmenu2x-gcw0 surface methods;
* Set default cpuMin to 342MHz;
* Unify file browser routines;
* File Explorer:
	* Support image preview;
	* View image files in ImageDialog;
	* View text files in TextDialog;
* Settings:
	* Add color switch for bool items;
	* New menu type allow submenus;
	* Add Factory Reset sub menu;
	* Reorder menu items;
	* Merge wallpaper and appearance settings into Skin menu;
* Auto detect Headphones;
* Auto detect external SD Card;
* Batch of internal changes, bug fixes and optimizations.

**2018.07.02** (*Codename: Blast Processing.*)
* Fix memory address register:
	* Fix SetCPU not setting CPU clock;
	* TV-Out working among SetCPU;
* Do not use inputCommonActions in MessageBox:
	* Prevents power button bounce;
	* Prevents entering in suspend mode while a messagebox is on screen;
* Updated compiler flags (optimize size and performance);
* UDC autodetect mount point when booting on external SD;
* Simplify Link and LinkAction classes;
* Use memregs to get UDC status (faster than system function);
* Releases will bundle only default GMenu2X assets:
	* Cleaned up default assets;
	* Allow to use icons/wallpapers/backdrops pack.

**2018.06.23** (*Codename: UUDDLRLRBA.*)
* Settings allow to change Section Bar position;
* Revamped TV-out function:
	* Plug/unplug the TV-out connector to enable/disable TV-out;
* Change CPU clock values safe range to 312~642MHz;
	* Allow to set max/min/default CPU clock values by editing gmenu2x.conf;
* New class PowerManager:
	* Use of SDL_AddTimer to manage Suspend and Poweroff;
	* Get rid of maths with SDL_GetTicks;
* Optimize button press and repeat detection:
	* Fine tune button timings;
* Use /dev/mem to monitor device status (faster than system function);
* Rework Link Scanner dialog;
* Rework of external SD card mount/umount;
* Fix Text Viewer dialog top position;
* Improve automatic loading of Manual files;
* Removed all extra skins:
	* Releases will bundle only Default skin;
* Re-add unicode font supporting Chinese, Korean, Japanese and Russian languages;
* Batch of internal changes and bug fixes.

**2018.06.03** (*Codename: McFly.*)
* New Date & Time settings:
	* Allow to set system's date and time (works until reboot);
* Fix bug when returning from app/emu to GMenuNext;
* Fix bug with Select combo key triggering context menu;
* Add new Volume slider control (SELECT + L):
	* Now you can control volume via software and hardware;
* Auto load available Manual files on start;
* Use the same app backdrop in Manual reader;
* Save Last Selection properly remember latest Section and Link;
* Updated some translatable text strings;
* Support loading and converting ancient skin files with separated RGBA components;
* Search for icon/backdrop/manual named as app linkname and foldername;
* Live skin:
	* Auto update layout and spacing on change;
	* Auto update font color and size on change;
* Allow set CPU clock values between 210 and 642 MHz (safe range);
* New lightweight font;
* New button input routine - try to improve button presses and repeats;
* Adjusts in titlebar text position;
* Add Korean translation, thanks to [@haven-jeon](https://github.com/haven-jeon);
* Batch of internal changes and bug fixes.

**2018.05.22** (*Codename: Zeraora.*)
* Improved loop timers in main thread and dialogs:
	* Enable SDL_AddTimer for RS97;
* Combo button is now SELECT:
	* SELECT + R: Screenshot;
	* SELECT + L: Toggle sound;
* Improved powerManager function:
	* New option to turn device off when inactive;
	* Add power manager to all dialogs;
* Optimize dialogs:
	* Don't redraw title, list and and bottom bar on every loop;
	* Pass title, description and icon as argument to wallpaper dialog;
* Improve manual dialog:
	* Integrate text manual with text dialog;
	* Create ImageViewer dialog;
* Add section icon to 'Rename Section' and 'Add Section' dialogs;
* Fix settings dialog redraw transparency;
* Realtime skin preview:
	* Update title icon on change skin;
    * Update button images on change skin;
* Fix INC/DEC buttons (update your input.conf!);
* Adjust buttons actions in menus and dialogs;
* globalVolume is fixed in RS97, as there's no way to adjust volume via software;
* Merged Toggle TV in TV system selection in settings:
	* TV OFF: Will use RS97's display;
	* NTSC / PAL: Will output image in TV-out jack and turn display off;
	* Will apply the setting on save and will reset to OFF on reboot;
* Reuse of gmenu2x->input prevents reinstantiate InputManager;
* Use global gmenu2x->inputCommonActions and avoid code duplication;
* Improvements in backlight slider;
* Batch of internal changes and bug fixes.

**2018.05.12** (*Codename: Any color you like.*)
* Realtime preview of Skin changes;
* Allow customize dimensions in Skin settings;
* Tweaks in MessageBox text position;
* Updated [@m1024x](https://github.com/m1024x/retrogame-skin-pack) retrogame skin pack.
* Fixed bug with fontAlt color in dialogs;
* Fixed bug when adding new link;
* Fix browse dialog not returning directory on exit;
* Batch of internal changes:
	* Updated some translatable strings;
	* Initialize fontAlt with #fd01fc00 and use regular color if not changed by skin;
	* Convert Link Scanner into an external dialog;
	* Convert Battery Logger into an external dialog;
	* Do not compile GP2X specific code to RS97;
	* Allow font color as argument to FontHelper write function.

**2018.05.06** (*Codename: Blind shot.*)
* Moved Battery Logger to Applications;
* Shows Battery Logger only if enter GMenuNext while charging;
* Use QWERTY keyboard layout in editor screens;
* Implement an alternative font color suport in skins;
* Add option to Skins backdrops;
* Fix crash when changing wallpaper in default skin;
* Fix backdrop not working in Selector screen;
* Updated [@m1024x](https://github.com/m1024x/retrogame-skin-pack) skin pack;
* Batch of internal changes.

**2018.05.02** (*Codename: Your device, your backdrops.*)
* Image backdrops in main menu and selector;
* Page up/down in settings dialog;
* Page up/down and rollover in context menu;
* Batch of internal changes:
	* Cleanup unused strings;
	* Improved path handler;
	* Unified use of SDL_Rect listRect for lists.

**2018.04.30** (*Codename: LWE.*)
* Removed Disk Free space from About Screen due to system lag.
* Removed /dist from repository and start using "Releases" 

**2018.04.28** (*Codename: Edison still wrong.*)
* Option to choose battery discharge profile in Settings;
* Uptime and battery status in About Screen;
* Improvements in Battery Logger;
* Calc text height in fonthelper;
* Messagebox use text height to create dialog
* Second adjust in battery indicator levels;
* Adjusts in About Screen.

**2018.04.26** (*Codename: How about you?*)
* Add some system information in About screen;
* About screen using about.txt

**2018.04.25** (*Codename: Edison was wrong.*)
* Save screenshot in a ./screenshots folder;
* First adjust in battery indicator based in data provided by Battery Logging. Thanks to @Valenhir, @m1024x and @Jutley for logging and sharing battery data. ;)

**2018.04.24** (*Codename: Snapshots of a Memory.*)
* Fixed incorrect brightness when returning from suspend mode;
* Dynamic fill the icon tray;
* Added option to auto hide a MessageBox;
* Use MessageBox to draw some messages;
* Save screenshot with combo [X] + [BUTTON_R];
* Mute/unmute with combo [X] + [TRIGGER_L];
* Fix in DekUI messagebox color;
* Screenshot function is global
* Brightness control is global

**2018.04.23** (*Codename: Don't look back.*)
* Fixed the Log Viewer;
* Added default values for brightness and global volume;
* New poweroff menu;
* New brightness slider control;
* New battery logger screen;
* New linear fit for battery level measurements (waiting for logs to improve);
* Rearranged how all input buttons are handled in main menu;
* Added option to customize the inactive timeout to suspend. Values can be set set between 10 to 300 seconds;
* Improved how to trigger power off and suspend via power button:
     * If hold the power button for ~1s, it will suspend the device;
     * If hold the power button for ~2.5s, power off menu will pop up;
* When waking up from suspended state, a press in power menu should wake up the device with at least 10% of brightness level;
* Rearranged in "core" of the main menu where it redraws the screen. Prevent redraw screen while in "suspend" mode.
* Absolute path resolving in filelister; Prevents (?) buffer overflow after browsing a lot of files and allow resolving relative paths.

**2018.04.20** (*Codename: Here comes a new challenger.*)
* New main menu layout, with a section bar on the left and items in list, inspired in [concept designed by @m1024x](http://boards.dingoonity.org/ingenic-jz4760-devices/gmenunext-let's-make-gmenu-great-again!/msg177170/#msg177170);
* Retouched every screen to make all system cohesive;
* Alternative selector browser, allowing you to load previews of your games if selector previews is set;
* Navigate page up/down with directional left/right;
* New variables for skin designers;
* New set of "Next" skins by [@m1024x](https://github.com/m1024x/retrogame-skin-pack).


## [How to have previews in Selector Browser](http://boards.dingoonity.org/ingenic-jz4760-devices/gmenunext-let's-make-gmenu-great-again!/msg177392/#msg177392)

* Select the link you want to edit and press "menu";
* Edit the link;
* Configure the link to match your directory structure. Important fields:
	* Selector Directory: The directory of your roms
	* Selector Browser: Enable selector before launching the app
	* Selector Filter: Filter extensions to be shown in the selector. Separe multiple extensions with commas.
	* Selector Screenshots: The directory of the screenshots/preview of your roms. It can be different than your roms directory.
* The name of the file of rom and preview have to be exactly the same. Suported image types are .png or .jpg;


## How to create battery logs

To get data of your battery charge and discharge cycle:
* Enter the Battery Logger;
* Do a full charge;
* After charged, remove the cable;
* Stay in this screen and wait until it discharges totally;

Repeat how many times you wish and can.

New data will be printed on screen every minute and will be saved in file **battery.csv** located in **gmenu2x** folder.

The fields logged are:
* Time: Time in milliseconds since GMenuNext started;
* BatteryStatus: Computed battery status, from 0 (discharged) to 4 (charged) and 5 (charging);
* BatteryLevel: Raw battery level as given by system.


## Controls

* A: Launch selected link / Confirm action;
* B: Cancel action / Goes up one directory in file browser;
* Y: Bring up the manual/readme;
* L, R: Switch between sections / PageUp/PageDown on lists;
* START: GMenu2X settings;
* SELECT: Bring up the contextual menu;
* SELECT + L: Volume control;
* SELECT + R: Take a screenshot;
* BRIGHTNESS: Change screen brightness;
* POWER: Toggle Suspend mode;
* POWER (hold): Bring up Poweroff dialog.
* TV-Out: (Dis)Connect the TV-out plug to toggle TV-out signal.


## Contacts

I want to thanks [@m1024x](https://boards.dingoonity.org/profile/m1024/) and [@jutley](https://boards.dingoonity.org/profile/jutley/) for all the support they are giving, testing and reporting bugs.

## Contacts

GMenu2X Copyright (c) 2006-2010 [Massimiliano Torromeo](mailto:massimiliano.torromeo@gmail.com); GMenuNext 2018 by [@pingflood](https://boards.dingoonity.org/profile/pingflood/); Skin PS4, PSNext, PSNextDark and Zelda by [@m1024x](https://github.com/m1024x/retrogame-skin-pack)

Visit the [Dingoonity thread](https://boards.dingoonity.org/ingenic-jz4760-devices/gmenunext-let's-make-gmenu-great-again!/) and the [Discord channel](https://discord.gg/hvR5vK6)!

[GMenu2X](http://mtorromeo.github.com/gmenu2x) homepage for more info.
