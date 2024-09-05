@echo off

echo Enter the path LDPlayer is installed.
echo For example, if the installed path is "E:\LDPlayer", then enter "E:".

set /p LDPlayerBasePath=">> "
echo.

cd %LDPlayerBasePath%\LDPlayer\LDPlayer9

adb devices
adb shell "su -c 'cd /data && dd if=/dev/zero of=fillfile bs=1048576 count=10000'"

adb shell "su -c 'rm /data/fillfile'"

pause
