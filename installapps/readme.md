## About

A very easy Shell Script to install apps. Root required.

## How to use

- Place the apk files inside the folder 'apps'
- Connect your Android device to your PC.
	- You can use adb over wifi by enabling this option in you device and typing in prompt
	```
	adb connect [ip address]:5555
	```
- Using adb:
```
adb root
adb push installapps /data/local
adb shell
cd /data/local/installapps
chmod 0755 installapps.sh
./installapps.sh