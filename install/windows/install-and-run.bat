@echo off
REM Internal helper — use INSTALL-WINDOWS.bat in the project root instead.
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0Install-Anisotropia.ps1"
if errorlevel 1 (
    echo.
    echo Install failed. See messages above.
    pause
    exit /b 1
)
