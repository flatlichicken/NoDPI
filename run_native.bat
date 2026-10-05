@echo off
title Running nodpi Application

:: 1. Create a clean temporary directory structure matching the Linux container
set "TEMP_DIR=%USERPROFILE%\AppData\Local\Temp\nodpi"
if not exist "%TEMP_DIR%" (
    mkdir "%TEMP_DIR%"
)

echo ===================================================
echo  Launching nodpi natively on Windows...
echo ===================================================
echo.

:: 2. Execute the python script using your local environment
python src/main.py

echo.
echo ===================================================
echo  Execution finished.
echo ===================================================
pause
