@echo off
for /f "tokens=5 delims=/: " %%P in ('jupyter server list 2^>nul ^| findstr "http"') do jupyter server stop %%P >nul 2>&1
for /f "tokens=2 delims= " %%P in ('tasklist /FI "IMAGENAME eq python.exe" /V ^| findstr /I "jupyter"') do taskkill /PID %%P /F >nul 2>&1
for %%F in ("%APPDATA%\jupyter\runtime\*server-*.json") do del "%%~F" >nul 2>&1
pause
