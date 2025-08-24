@echo off
cd /D "%~dp0".
:: === SPINNER AUTONOME ===
cls
echo|set /p="[0m [33m _____________________________________________________________________ "
echo.
echo|set /p="[0m [33m/   [0m,___,    [33m| [0mComputer Wash Progress V 2025.08.23.00.11              [33m\"
echo.
echo|set /p="[0m [33m|   [0m[O.o]    [33m|                                                        [33m|"
echo.
echo|set /p="[0m [33m|   [0m/)__)    [33m| [0mStatus :                                               [33m|"
echo.
echo|set /p="[0m [33m|  [0m--"--"--  [33m|  [0mIn Progress                                           [33m|"
echo.
echo|set /p="[0m [33m\____________|________________________________________________________/"
echo.
echo.
echo|set /p="[0m [34mWelcome to the Computer Wash spinner."
echo.
echo.
echo|set /p="[0m [32mYou can close it or leave it open, but don't touch the Computerwash script."
echo.
echo|set /p="[0m [32mThis script closes automatically when it finishes running.[0m "
echo.
echo.
echo|set /p="[0m [31mYou can permanently disable this script by deleting ""Spinner.cmd"".[0m "
echo.
echo.
:: Choisir un style de spinner
set "spinner=^| ^/ ^- ^\"

:loop
:: Vérifier si stop.txt existe
if exist stop.txt goto :endloop

:: Boucle sur les symboles
for %%s in (%spinner%) do (
    <nul set /p="[0m Work in progress... %%s"
    powershell -command "Start-Sleep -Milliseconds 500" >nul
    <nul set /p=[1G
)
powershell -command "Start-Sleep -Milliseconds 500" >nul
goto loop

:endloop
del stop.txt
exit