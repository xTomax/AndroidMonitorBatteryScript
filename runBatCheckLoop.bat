@echo off
REM ###Configure from USB connection
REM adb tcpip 5555
REM ###Check mobile IP
REM adb shell ip -f inet addr show wlan0
REM ###connect adb remotly
REM adb connect XXX.XXX.XXX.XXX:5555
REM ###Start loop
:loop
"c:\Developer tools\AndroidSDK\platform-tools\adb.exe" shell cat /sys/class/power_supply/battery/batt_vol_adc
ping localhost -n 2 > nul
goto loop
REM ###TODO: After Ctrl pressed reset to default settings
REM ###Set mobile to no remote ADB
REM setprop service.adb.tcp.port -1
REM stop adbd
REM start adbd
REM ###Back to adb by USB
adb usb
