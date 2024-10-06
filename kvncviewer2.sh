#!/bin/sh
cd $(dirname "$0")
LD_LIBRARY_PATH=.
export LD_LIBRARY_PATH
#orient=`lipc-get-prop com.lab126.winmgr orientationLock`
lipc-set-prop com.lab126.powerd preventScreenSaver 1
lipc-set-prop com.lab126.winmgr orientationLock L
#./refresh_vnc.sh
./luajit  vncviewer.lua -rotateFB 90 [IPADDR]:5900
#lipc-set-prop com.lab126.winmgr orientationLock $orient
lipc-set-prop com.lab126.powerd preventScreenSaver 0
