@echo off

echo Enter the path LDPlayer is installed.
echo For example, if the installed path is "E:\LDPlayer", then enter "E:".

set /p LDPlayerBasePath=">> "
echo.

cd %LDPlayerBasePath%\LDPlayer\LDPlayer9

adb devices
adb shell "su -c 'cd /sdcard && dd if=/dev/zero of=fillfile bs=1048576 count=1024'"

adb shell rm /sdcard/fillfile

pause
