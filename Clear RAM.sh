#!/system/bin/sh
clear
echo "[Information] Starting Clear Cache..."
sleep 1
free | awk '/Mem/{print "Free Memory Before Boosting : "$4/1024" MB";}'
echo -e "\e[1;31m"
echo "System Are Checking!"
sleep 1
echo "\e[0mScript Is Running, Do Not Close App!"
echo "3" > /proc/sys/vm/drop_caches;
sleep 1
echo "Clear Cache Finished!"
echo -e "\e[1;33m"
echo "\e[1;33m[ Status ] \e[1;33mDone! Your Device Already Clear Cache!"
free | awk '/Mem/{print "Free Memory After Boosting! : "$4/1024" MB";}'
exit