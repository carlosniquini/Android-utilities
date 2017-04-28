#!/system/bin/sh

if [ -z "$1" ]; then
	echo "Requires 1 argument"
	exit
fi

var=$(ls /data/app | grep "$1")
var_=$(ls /system/priv-app | grep "$1")

if [ -z "$var" ]; then
	if [ -z "$var_" ]; then
		echo "Could not find directoty"
		exit
	fi
	echo "Already defined as system app"
	exit
fi

echo "Moving /data/app/$var to /system/priv-app/"
mount -o rw,remount,rw /system
mv /data/app/$var /system/priv-app/

var=$(ls /system/priv-app | grep "$1")

if [ -z "$var" ]; then
	echo "Error"
	exit
else
	echo "/system/priv-app/$var \n Moved successfully!\n Rebooting..."
	am broadcast android.intent.action.ACTION_SHUTDOWN
	sleep 5
	reboot
fi

# mount -o ro,remount,ro /system