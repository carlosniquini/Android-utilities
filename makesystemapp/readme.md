## About

Shell Script to convert user app to system app. Require root.

## How to use

* 1º option:
- You can create the shell script in your device using UNIX/OSX format.
- Create the file outside sdcard directoty.
- Using an Android Terminal:

```
chmod 0755 makesystemapp.sh
./makeSystemapp.sh [app code-name]
```
- After run, your device will restart.

* 2º option:
- Connect your Android device to your PC.
	- You can use adb over wifi by enable this option in you device and type in prompt
	```
	adb connect [end.]:5555
	```
- Send the script to your device:
```
adb push makesystemapp.sh /data/local/
```
- Run adb as root:
```
adb root
```
- Open the android shell:
```
adb shell
cd /data/local/
chmod 0755 makesystemapp.sh
./makeSystemapp.sh [app code-name]
```
- After run, your device will restart.