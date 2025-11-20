@echo off
echo|set /p="This script closes automatically after installation."
cd /D "%~dp0".
call ComputerWash.cmd ArispBypass S2 C55
:check
timeout /t 5 >nul
if not exist "END.TXT" goto :check
if exist "%temp%\ComputerWash.cmd" (
    for %%i in ("%temp%\*") do (
        if /I not "%%~nxi"=="*.cmd" del /F /Q "%%i"
    )
)
if exist "%temp%\END.TXT" (
    for %%i in ("%temp%\*") do (
        if /I not "%%~nxi"=="*.cmd" del /F /Q "%%i"
    )
)
exit