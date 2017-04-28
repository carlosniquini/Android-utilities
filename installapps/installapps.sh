#!/system/bin/sh
for f in apps/*.apk ; do 
	echo "$f"
	pm install "$f";
done