#!/system/bin/sh
clear
echo "Starting PUBG MOBILE 64bit..."
sleep 1
echo -e "\e[1;33m"
echo "Bypass By @x9bonjez"
sleep 2
echo "\e[1;41m\n\a\t Running \e[0m\n"
export Storage="/storage/emulated/0" &> /dev/null
export Storage_Two="/storage/emulated/0/Android/data" &> /dev/null
export Media="/data/media/0" &> /dev/null
export Media_Two="/data/media/0/Android/data" &> /dev/null
export Data="/data/data" &> /dev/null
export App="/data/app" &> /dev/null
export PKG="com.tencent.ig" &> /dev/null
alias R="rm -rf" &> /dev/null
alias E="echo" &> /dev/null
alias SP="chmod" &> /dev/null
alias P="cp" &> /dev/null
alias K="mkdir" &> /dev/null
alias T="touch" &> /dev/null
########################################
su -c iptables -F &> /dev/null
su -c iptables -X &> /dev/null
su -c iptables --flush &> /dev/null
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables -X
iptables -F
E "128" > /proc/sys/fs/inotify/max_user_instances &> /dev/null
E "8192" > /proc/sys/fs/inotify/max_user_watches &> /dev/null
E "16384" > /proc/sys/fs/inotify/max_queued_events &> /dev/null
R /data/cache/magisk.log &> /dev/null
R src/main/java/com/google/errorprone/annotations &> /dev/null
R src/main/java/com/google/errorprone/annotations/concurrent &> /dev/null
R third_party.java_src.error_prone.project.annotations.Google_internal &> /dev/null
########################################
eval `pm dump $PKG | grep LibraryDir`
lib=$legacyNativeLibraryDir
arm=$(ls $lib | grep arm)
lib=$lib/$arm
pm path $PKG &> /dev/null
killall $PKG 2&> /dev/null
DUMP() {
  pm dump $1 | grep $2 | tr ' ' '\n' | grep $1 | sed s/$2// | tr -d '\n';
};
lib=`ls -mR $(DUMP $PKG legacyNativeLibraryDir=) | grep : | tr -d : | grep /arm64 | grep -v sosna`
#Remove lib
R $lib/{libapp.so,libc++_shared.so,libflutter.so,libgamemaster.so,libgcloudarch.so,libhelpshiftlistener.so,libhelpshiftlistener.so,libImSDK.so,libkk-image.so,liblbs.so,libmarsxlog.so,libmmkv.so,libnpps-jni.so,libsentry.so,libsentry-android.so,libsoundtouch.so,libst-engine.so,libtgpa.so,libzip.so,libspecialgem.so} &> /dev/null
########################################
#Permission Lib
SP 755 $lib/*
########################################
#Fix crash
R /data/cache/magisk.log &> /dev/null
R $Data/$PKG/{databases,app_appcache,app_crashrecord,app_crashSight,app_databases,app_flutter,app_geolocation,app_lib,app_textures,app_webview_meemo,cache,code_cache,no_backup} &> /dev/null
R $Data/$PKG/files/{ano_tmp,iMSDK,xlog} &> /dev/null
T $Data/$PKG/{app_appcache,app_crashrecord,app_crashSight,app_databases,app_flutter,app_lib,app_geolocation,app_textures,app_webview_meemo,code_cache,cache,no_backup} &> /dev/null
T $Data/$PKG/files/{ano_tmp,iMSDK,xlog} &> /dev/null
SP -R 000 $Data/$PKG/cache/* &> /dev/null
SP -R 000 $Data/$PKG/app_crashSight &> /dev/null
SP -R 000 $Data/$PKG/app_crashrecord/* &> /dev/null
SP -R 600 $Data/$PKG/files/* &> /dev/null
SP -R 000 $Data/$PKG/{app_appcache,app_databases,app_flutter,app_lib,app_geolocation,app_textures,app_webview_meemo,cache,code_cache,no_backup} &> /dev/null
SP -R 000 $Data/$PKG/files/{iMSDK,ano_tmp,xlog} &> /dev/null
BG -R 000 $App/$PKG*/oat/arm64 &> /dev/null
BG -R 755 $App/$PKG*/lib/arm64/* &> /dev/null
########################################
#Turn off some plugin
############################
#Clear Logs Cache
am force-stop com.tencent.ig &>/dev/null
killall $PKG &> /dev/null
R $Storage/.* &> /dev/null
R $Storage/at &> /dev/null
R $Storage/.xlDownload &> /dev/null
R $Storage/libs &> /dev/null
R $Storage/amap &> /dev/null
R $Storage/did &> /dev/null
R $Storage/dctp &> /dev/null
R $Storage/sitemp &> /dev/null
R $Storage/tencent &> /dev/null
R $Storage/Tencent &> /dev/null
R $Storage/MT2 &> /dev/null
R $Storage/backups &> /dev/null
R $Storage/log &> /dev/null
R $Storage/MidasOversea &> /dev/null
R $Storage/QTAudioEngine &> /dev/null
R $Storage/register.log &> /dev/null
R $Storage/Android/.Trash &> /dev/null
R $Storage/Android/obj &> /dev/null
R $Storage_Two/$PKG/cache &> /dev/null
R $Storage_Two/$PKG/files/ProgramBinaryCache &> /dev/null
R $Storage_Two/$PKG/files/TGPA &> /dev/null
R $Storage_Two/$PKG/files/ca* &> /dev/null
R $Storage_Two/$PKG/files/login* &> /dev/null
R $Storage_Two/$PKG/files/log &> /dev/null
R $Storage_Two/$PKG/files/hawk_data &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/Engine &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/Epic* &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/LightData &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs0 &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferEifs1 &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/MMKV &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Demos &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*.json &> /dev/null
T $Storage_Two/$PKG/cache &> /dev/null
T $Storage_Two/$PKG/files/ProgramBinaryCache &> /dev/null
T $Storage_Two/$PKG/files/log &> /dev/null
T $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Demos &> /dev/null
T $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &> /dev/null
BG -R 000 $Storage_Two/$PKG/cache &> /dev/null
BG -R 000 $Storage_Two/$PKG/files/ProgramBinaryCache &> /dev/null
BG -R 000 $Storage_Two/$PKG/files/log &> /dev/null
BG -R 000 $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Demos &> /dev/null
BG -R 000 $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs &> /dev/null
############################
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/{puffer_temp,puffer_res.eifs,res_pufferpatch_*.pak} &> /dev/null
R $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/coverversion.ini &> /dev/null
##K $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/res_pufferpatch_2.3.1.16949.pak &> /dev/null
##K $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/res_pufferpatch_2.3.1.16952.pak &> /dev/null
##K $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/res_pufferpatch_2.2.1.16744.pak &> /dev/null
##K $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/res_pufferpatch_2.2.1.16757.pak &> /dev/null
K $Storage_Two/$PKG/files/{ca-bundle.pem,cacheFile.txt,hawk_data,login-identifier.txt,Pictures} &> /dev/null
K $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/{GameErrorNoRecords,StatEventReportedFlag,coverversion.ini} &> /dev/null
BG -R 000 $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/{Demos,Logs} &> /dev/null
##BG -R 555 $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/res_pufferpatch_2.3.1.16949.pak &> /dev/null
##BG -R 555 $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/res_pufferpatch_2.3.1.16952.pak &> /dev/null
##BG -R 555 $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/res_pufferpatch_2.2.1.16744.pak &> /dev/null
##BG -R 555 $Storage_Two/$PKG/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/res_pufferpatch_2.2.1.16757.pak &> /dev/null
R /data/cache/magisk.log &> /dev/null
R /data/cache/magisk.log &> /dev/null
R /data/media/0/Tencent &> /dev/null
############################
pm disable $PKG/com.sirius.flutter.im.MeemoBGService  &>/dev/null;
pm disable $PKG/com.tencent.midas.oversea.newnetwork.service.APNetDetectService  &>/dev/null;
pm disable $PKG/com.sirius.meemo.foreground_service.ForegroundService &>/dev/null;
############################
#start Game
su -c settings put global block_untrusted_touches 0
am start -n $PKG/com.epicgames.ue4.SplashActivity > /dev/null

echo "Telegram: @x9bonjez" &> /dev/null
su -lp 2000 -c "cmd notification post -S bigtext -t 'ANTIBAN 64bit ON' 'Tag' 'Telegram: @x9bonjez'" &> /dev/null
sleep 2
echo "\e[1;33m\n\a\t ◕▬▬▬▬▬▬▬ᴛʜᴀɴᴋꜱ ꜰᴏʀ ᴜꜱɪɴɢ▬▬▬▬▬▬▬◕ \e[0m\n"
exit &> /dev/null