#!/system/bin/sh
clear
echo "\e[1;41m\n\a\t Clean Cache App By @x9bonjez \e[0m\n"
sleep 1
echo Starting Clean The Cache
rm -rf /storage/emulated/0/Android/data/*/cache/*
rm -rf /data/data/*/cache/*
rm -rf /data/dalvik-cache/arm/*
rm -rf /data/dalvik-cache/arm64/*
rm -rf /cache/magisk.log
touch /cache/magisk.log
chmod 644 /cache/magisk.log
sleep 1
echo "\e[1;41m\n\a\t Clean Cache Done \e[0m\n"
exit