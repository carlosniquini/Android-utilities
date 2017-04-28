## About

Shell Script to convert user app to system app. Require root.

## How to use

### 1º option
- You can create the shell script in your device using UNIX/OSX format.
- Create the file outside sdcard directory.
- Using an Android terminal emulator :
```
chmod 0755 makeSystemapp.sh
./makeSystemapp.sh [app code-name]
```
- After run, your device will restart.

### 2º option
- Connect your Android device to your PC.
	- You can use adb over wifi by enabling this option in you device and typing in prompt
	```
	adb connect [ip address]:5555
	```
- Send the script to your device:
```
adb push makeSystemapp.sh /data/local/
```
- Run adb as root:
```
adb root
```
- Open the adb shell:
```
adb shell
cd /data/local/
chmod 0755 makesystemapp.sh
./makeSystemapp.sh [app code-name]
```
- After run, your device will restart.

### Example
We install cerberus over Play Store and now we want do make it a system app.
```
./makeSystemapp.sh cerberus
```
Pay attention in the app code-name. Sometimes it can be different from app name.
For Google Allo, for example, the code-name is 'fireball'.