@echo off
setlocal

set VdiskManager=%cd%\VdiskManager\vmware-vdiskmanager.exe

echo Enter the path LDPlayer is installed.
echo For example, if the installed path is "E:\LDPlayer", then enter "E:".

set /p LDPlayerBasePath=">> "
echo.

set LDPlayerPath=%LDPlayerBasePath%\LDPlayer\LDPlayer9\vms\leidian

echo The path LDPlayer is installed is "%LDPlayerBasePath%\LDPlayer\LDPlayer9".
echo.

echo Enter the instance ID you want to edit:

set /p InstanceID=">> "
echo.

set VMDKPath=%LDPlayerPath%%InstanceID%\sdcard.vmdk

"%VdiskManager%" -k "%VMDKPath%"

pause
