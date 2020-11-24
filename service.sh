#!/system/bin/sh

## DT2W
## Simple script that will enable double tap to wake during late boot.
## For Nexus 7 [2013] (Flo/Deb) and Nexus 10 (Manta)
## Nexus 9 (Flounder)

if [ $(find /sys/ -name 'doubletap*' | sed '$!d') ]; then
	echo "1" >$(find /sys/ -name 'doubletap*' | sed '$!d');
elif [ $(find /sys/ -name 'dt2w*' | sed '$!d') ]; then
	echo "1" >$(find /sys/ -name 'dt2w*' | sed '$!d');
elif [ $(find /sys/ -name 'wake_gesture' | sed '$!d') ]; then
	echo "1" >$(find /sys/ -name 'wake_gesture' | sed '$!d');
fi;
