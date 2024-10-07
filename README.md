# NOTE! This is a customized version of kvncviewer found on the MobileRead forums.
This repo lacks many of the libraries and other files to be compiled, and is a mix of files from 2013 and 2024. If you're looking to make changes and/or compile yourself, you likely want the parent repo.

## Changes
- Touching anywhere on the screen quits the VNC viewer. Previously, there was no way to quit the viewer other than ssh-ing into the Kindle, or force rebooting the Kindle. Soon I intend to make a specific corner of the screen quit, so you can still move the cursor with the Kindle touchscreen.

## About

This is a VNC viewer for eReaders.
Copyright (c) 2013 Hans-Werner Hilse <hilse@web.de>

It works on the framebuffer, using the einkfb API from e-ink devices (einkfb.h) to do screen refreshes.
This is based on LibVNCClient, part of the [LibVNCServer project](https://libvnc.github.io/).


There are multiple discussion threads on MobileRead:
<br>
http://www.mobileread.com/forums/showthread.php?t=150434
<br>
https://www.mobileread.com/forums/showthread.php?t=228168 (the source of most of these files)


## Configuration

Input handling is configurable/customizable in "config.lua".

kVNCviewer supports many options that determine various settings. Run it without arguments to show a list of supported options. In addition, LibVNCClient parses options, which allows for additional configuration. Look into the [documentation of LibVNCClient](https://libvnc.github.io/doc/html/group__libvncclient__api.html#gabb2299d1644f3cf38544eb97d2356475) to see the options it accepts.


## Building

This version of kindlevncviewer lacks many of the files required to build. To compile it yourself, use the parent repository owned by HWHW here: [link to parent repo](https://github.com/hwhw/kindlevncviewer)

## Running

You need to copy the contents of this repo to your eReader. If you're running KUAL (recommended), copy the entire kindlevnc folder into your /mnt/us/extensions folder. Then, from a launcher app or shell, call:

```
./luajit vncviewer.lua 192.168.1.1:5900
```

You will need to enter the correct server address or name and screen number.
Alternatively, edit the ip addresses in the "kvncviewer.sh" scripts to your prefered host machine, as those can be triggered through KUAL. 


## Licensing/Copying

This software is licensed under the GPLv2 (see file COPYING).
