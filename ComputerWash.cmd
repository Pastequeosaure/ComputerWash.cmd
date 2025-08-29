@echo off
set Anyreproductionisstrictlyprohibited=1
:ALL
chcp 65001
setlocal EnableDelayedExpansion
:: Any unauthorized modification of this ferra is at your own risk.
:: You are allowed to modify all the parameters by default in the large frame at the beginning of the file except the version number
::  ______________________________________________________ 
:: /                                                      \
:: |                Computer Wash Ulitmate                |
:: |______________________________________________________|
:: |                                                      |
:: |    https://computerwash.wixsite.com/computer-wash    |
:: |______________________________________________________|
:: |                                                      |
:: | Created : PastequeOsaure V 0.0              17/09/19 |
:: |         : -... . ..- ...- . - .... --- -- .- ...     |
:: |------------------------------------------------------|
:: |                  ⚠️ DISCLAIMER ⚠️                   |
:: |------------------------------------------------------|
:: |                                                      |
:: |- Any unauthorized modification of this script is     |
:: |  done at your own risk.                              |
:: |- You are allowed to edit parameters in the main      |
:: |  block at the beginning of the file, EXCEPT:         |
:: |  - the version number                                |
:: |  - the creation date                                 |
:: |  - the creator's nickname                            |
:: |                                                      |
:: | 👉 If you update this script, please record your     |
:: |     changes in the **Update** section.               |
:: |                                                      |
:: |- This script does NOT guarantee troubleshooting.     |
:: |  It is designed to simplify and automate commands in |
:: | advance, saving time.                                |
:: |                                                      |
:: | Version Number :                                     |
:: |                                                      |
set V=V.2025.08.29.23.18
:: |______________________________________________________|
:: |                                                      |
:: | Update  : PastequeOsaure V 2025.08.29.23.18          |
:: |                                                      |
:: |    Participation :                                   |
:: |    |                                                 |
:: |    | AAA3A      : cd /D "%~dp0". --------   07/07/21 |
:: |    |                                                 |
:: |    | ChatGpt    : Quiz Secret -----------   24/08/25 |
:: |    |                                                 |
:: |    | ChatGpt    : THE_HAUNTED_COMPUTER --   24/08/25 |
:: |    |            : Secret                             |
:: |    |                                                 |
:: |    | ChatGpt    : Lymbiratus Secret -----   29/08/25 |
:: |    |                                                 |
:: |    |_________________________________________________|
:: |                                                      |
:: |______________________________________________________|
:: |                                                      |
:: | Log ?                                                |
:: |                                                      |
:: | 0) OFF 1) ON ( default )                             |
:: |                                                      |
set Log=1
:: |______________________________________________________|
:: |                                                      |
:: | Copy computerwash to system32 0 = OFF ( default )    |
:: |                               1 = ON                 |
:: |                                                      |
set copy=0
:: |______________________________________________________|
:: |                                                      |
:: | System info 0 = OFF 1 = ON  ( default )              |
:: |                                                      |
set wmicsoftwarelicensingservice=1
:: |______________________________________________________|
:: |                                                      |
:: |    Color ?                                           |
:: |                                                      |
set Color=1
:: |                                                      |
:: |    0) OFF 1) ON ( default )                          |
:: |______________________________________________________|
:: |                                                      |
:: |    From this point I advise you not to make          |
:: |    any changes.                                      |
:: |                                                      |
:: |    ( A vos risques et perils ! ! ! ! )               |
:: |    ( At your own risk ! ! ! ! )                      |
:: \______________________________________________________/

:: ===============================
:: 🔧 Computer Wash Color puis Admin ?
:: ===============================
title Computer wash ERR ADMIN
cd /D "%~dp0".
call :Color
goto :full_mode_admin

:: ===============================
:: 🔧 Algo + menu personnalisé
:: ===============================
:algo
set nb=0
:: ===============================
:: 🔧 Call à la fin du fichier script
:: 🔧 Bien mettre à jour les variables dans le même ordre !
:: Code Ctrl + F pour Var C
:: Code 5Ed5wEu5Q6
:: ===============================
call :Create_Restore_Point
call :System_info
call :Chkdsk
call :Defragmentation
call :cleanmgr
call :DISM
call :Sfcscannow
call :findstr
call :Mrt
call :SignatureUpdate
call :MpCmdRunBootSectorScan
call :MpCmdRunScanType
call :pnpunattendauditsystem
call :mode
call :mdsched
call :bcdbootsfall
call :wsreset
call :rstrui
call :AllUpdateAPP
call :wingetgooglechrome
call :wingetMozillaFirefox
call :wingetVideoLANVLC
call :wingetAcrobat
call :winget7zip
call :KeePass
call :wuauservStop
call :cryptSvcStop
call :bitsStop
call :msiserverStop
call :del
call :del2
call :SoftwareDistribution
call :catroot2
call :winsockreset
call :interfaceipreset
call :advfirewallreset
call :ipconfigrelease
call :ipconfigflushdns
call :iwinhttp
call :bitsadminresetallusers
call :DLLWindowsUp
call :wuauservStart
call :cryptSvcStart
call :bitsStart
call :msiserverStart
call :StartScan
call :StartDownload
call :StartInstall
call :RestartDevice
call :shutdown
call :Pause
call :USB
call :Exit
call :AutoLigneMenu C Ligne_MenuC
call :Spinner_OFF
goto :eof

:: ===============================
:: 🔧 Color
:: ===============================
:Color
:: - Color Mode -
 if /I "%Color%"=="1" (
 :: - STYLES
 set SRESET=[0m
 set SBOLD=[1m
 set SUNDERLINE=[4m
 set SINVERSE=[7m
 :: - NORMAL FOREGROUND COLORS
 set NFCBLACK=[30m
 set NFCRED=[31m
 set NFCGREEN=[32m
 set NFCYELLOW=[33m
 set NFCBLUE=[34m
 set NFCMAGENTA=[35m
 set NFCCYAN=[36m
 set NFCWHITE=[37m
 :: - NORMAL BACKGROUND COLORS
 set NBCBLACK=[40m
 set NBCRED=[41m
 set NBCGREEN=[42m
 set NBCYELLOW=[43m
 set NBCBLUE=[44m
 set NBCMAGENTA=[45m
 set NBCCYAN=[46m
 set NBCWHITE=[47m
 :: - STRONG FOREGROUND COLORS
 set SFCBLACK=[90m
 set SFCRED=[91m
 set SFCGREEN=[92m
 set SFCYELLOW=[93m
 set SFCBLUE=[94m
 set SFCMAGENTA=[95m
 set SFCCYAN=[96m
 set SFCWHITE=[97m
 :: - STRONG BACKGROUND COLORS
 set SBCBLACK=[100m
 set SBCRED=[101m
 set SBCGREEN=[102m
 set SBCYELLOW=[103m
 set SBCBLUE=[104m
 set SBCMAGENTA=[105m
 set SBCCYAN=[106m
 set SBCWHITE=[107m
 ) else (
 :: - STYLES
 set SRESET=[0m
 set SBOLD=[1m
 set SUNDERLINE=[4m
 set SINVERSE=[7m
 :: - NORMAL FOREGROUND COLORS
 set NFCBLACK=[0m
 set NFCRED=[0m
 set NFCGREEN=[0m
 set NFCYELLOW=[0m
 set NFCBLUE=[0m
 set NFCMAGENTA=[0m
 set NFCCYAN=[0m
 set NFCWHITE=[0m
 :: - NORMAL BACKGROUND COLORS
 set NBCBLACK=[0m
 set NBCRED=[0m
 set NBCGREEN=[0m
 set NBCYELLOW=[0m
 set NBCBLUE=[0m
 set NBCMAGENTA=[0m
 set NBCCYAN=[0m
 set NBCWHITE=[0m
 :: - STRONG FOREGROUND COLORS
 set SFCBLACK=[0m
 set SFCRED=[0m
 set SFCGREEN=[0m
 set SFCYELLOW=[0m
 set SFCBLUE=[0m
 set SFCMAGENTA=[0m
 set SFCCYAN=[0m
 set SFCWHITE=[0m
 :: - STRONG BACKGROUND COLORS
 set SBCBLACK=[0m
 set SBCRED=[0m
 set SBCGREEN=[0m
 set SBCYELLOW=[0m
 set SBCBLUE=[0m
 set SBCMAGENTA=[0m
 set SBCCYAN=[0m
 set SBCWHITE=[0m
 )
goto :eof

:: ===============================
:: 🔧 Admin ? si oui goto Copy
:: ===============================
:full_mode_admin
If _%1_==_payload_  goto :copy
:Admin
 set vbs=%temp%\getadmin.vbs
 echo Set UAC = CreateObject^("Shell.Application"^)>> "%vbs%"
 echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
 "%temp%\getadmin.vbs"
 del "%temp%\getadmin.vbs"
 call :separator "Error admin"
 call :Erreur
 exit
 
:: ===============================
:: 🔧 Copy puis Initialisation des variables
:: ===============================
:copy
if /I "%LOG%"=="1" (
	echo . > "%CD%\Computer Wash Log.txt"
	echo "  ______________________________________________________  " >> "%CD%\Computer Wash Log.txt"
	echo " /                                                      \ " >> "%CD%\Computer Wash Log.txt"
	echo " | Computer Wash LOG EDITION V 0.5 - %DATE%         | " >> "%CD%\Computer Wash Log.txt"
	echo " |______________________________________________________| " >> "%CD%\Computer Wash Log.txt"
	echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"
	echo " |   %date%   | Computer                            | " >> "%CD%\Computer Wash Log.txt"
	echo " |  %TIME%   |           Wash                      | " >> "%CD%\Computer Wash Log.txt"
	echo " |----------------|_____________________________________| " >> "%CD%\Computer Wash Log.txt"
	echo " |                                                      | " >> "%CD%\Computer Wash Log.txt"
	echo " | Created : Computer Wash - - - - - - - - - - - - - - -| " >> "%CD%\Computer Wash Log.txt"
	echo " |______________________________________________________| " >> "%CD%\Computer Wash Log.txt"
	echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"
	echo " |----------------| Nom du PC : %COMPUTERNAME% " >> "%CD%\Computer Wash Log.txt"
	echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"
)

 title Computer Wash %V%
 verify on
 if /I "%copy%"=="1" (
	xcopy "ComputerWash.cmd" "%windir%\system32\"  /s /h /y
)
if exist stop.txt (
	del stop.txt
)
goto :Var

:: ===============================
:: 🔧 Initialisation des variables puis ARGC_mode_?
:: ===============================
:Var
 set A=A
 set A1=Daily Wash
 set A2=Maintenance Wash
 set A3=Washing Repair
 set A4=Last Resort Wash
 set A5=Update All App

 set S=S
 set S1=Antivirus Malware Scan
 set S2=Force Windows Update
 set S3=Full Windows Update Reset
 set S4=Verificaton system + log
 set S5=Restore system
 set S6=Restart Windows in Recovery Mode
 set S7=Start repair Boot ^/ Startup Windows
 set S8=Dignostic RAM
 set S9=Maintenance disk c
 set S10=Disk Cleanup
 set S11=Delete temporary files
 set S12=Reset the ip interface
 set S13=Reset WS cache
 set S14=Setup Chrome Firefox VLC Acrobat 7zip KeePASS
 set S15=Update All App
 set S16=Computer Wash USB Protection

 set D=Colorblind Mode
 set R=Return to the main menu
 set Quiz=Quiz
 set Vipptore=Lymbiratus
 set Lymbiratus=Lymbiratus
 set ArispBypass=ArispBypass
 set THE_HAUNTED_COMPUTER=THE_HAUNTED_COMPUTER

:: 5Ed5wEu5Q6
 set C=C
 set nb=0
 set /a nb+=1
set C%nb%=Wmic.exe
 set /a nb+=1
set C%nb%=System info
 set /a nb+=1
set C%nb%=Chkdsk
 set /a nb+=1
set C%nb%=Defragmentation
 set /a nb+=1
set C%nb%=cleanmgr
 set /a nb+=1
set C%nb%=DISM
 set /a nb+=1
set C%nb%=sfc
 set /a nb+=1
set C%nb%=findstr
 set /a nb+=1
set C%nb%=Mrt
 set /a nb+=1
set C%nb%=SignatureUpdate
 set /a nb+=1
set C%nb%=MpCmdRunBootSectorScan
 set /a nb+=1
set C%nb%=MpCmdRunScanType
 set /a nb+=1
set C%nb%=pnpunattendauditsystem
 set /a nb+=1
set C%nb%=mode
 set /a nb+=1
set C%nb%=mdsched
 set /a nb+=1
set C%nb%=bcdboot
 set /a nb+=1
set C%nb%=Wsreset
 set /a nb+=1
set C%nb%=rstrui
 set /a nb+=1
set C%nb%=AllUpdateAPP
 set /a nb+=1
set C%nb%=wingetgooglechrome
 set /a nb+=1
set C%nb%=wingetMozillaFirefox
 set /a nb+=1
set C%nb%=wingetVideoLANVLC
 set /a nb+=1
set C%nb%=wingetAcrobat
 set /a nb+=1
set C%nb%=winget7zip
 set /a nb+=1
set C%nb%=KeePass
 set /a nb+=1
set C%nb%=wuauservStop
 set /a nb+=1
set C%nb%=cryptSvcStop
 set /a nb+=1
set C%nb%=bitsStop
 set /a nb+=1
set C%nb%=net stop msiserver
 set /a nb+=1
set C%nb%=del
 set /a nb+=1
set C%nb%=del2
 set /a nb+=1
set C%nb%=SoftwareDistribution
 set /a nb+=1
set C%nb%=catroot2
 set /a nb+=1
set C%nb%=winsockreset
 set /a nb+=1
set C%nb%=interfaceipreset
 set /a nb+=1
set C%nb%=advfirewallreset
 set /a nb+=1
set C%nb%=ipconfigrelease
 set /a nb+=1
set C%nb%=ipconfigflushdns
 set /a nb+=1
set C%nb%=winhttp
 set /a nb+=1
set C%nb%=bitsadmin
 set /a nb+=1
set C%nb%=DLLWindowsUp
 set /a nb+=1
set C%nb%=wuauservStart
 set /a nb+=1
set C%nb%=cryptSvcStart
 set /a nb+=1
set C%nb%=bitsStart
 set /a nb+=1
set C%nb%=net Start msiserver
 set /a nb+=1
set C%nb%=UsoClient StartScan
 set /a nb+=1
set C%nb%=UsoClient StartDownload
 set /a nb+=1
set C%nb%=UsoClient StartInstall
 set /a nb+=1
set C%nb%=UsoClient RestartDevice
 set /a nb+=1
set C%nb%=shutdownrr
 set /a nb+=1
set C%nb%=shutdownro
 set /a nb+=1
set C%nb%=shutdown
 set /a nb+=1
set C%nb%=Pause
 set /a nb+=1
set C%nb%=exit
 set /a nb+=1
set C%nb%=%SFCGREEN%Start%SRESET%

 set /a i=1
 :loopInverse
 call set "value=%%C%i%%%"
 if defined value (
    set "CC%i%=%value%"
    set /a i+=1
    goto :loopInverse
 )

 set choix=0
 set Spinner=0
 set Start?=0
 set verify=1
 set Security=1
 set Shutdown=0
 set ALL=0
 set chrome=0
 set Firefox=0
 set VLC=0
 set Acrobat=0
 set zip=0
 set KeePass=0
 set bcdboot=0
 set chkdsk=0
 set cleanmgr=0
 set del=0
 set del2=0
 set defrag=0
 set DISM=0
 set mode=0
 set pnpunattend=0
 set findstr=0
 set mdsched=0
 set interfaceipreset=0
 set ipconfig=0
 set Mrt=0
 set SignatureUpdate=0
 set MpCmdRunBootSectorScan=0
 set MpCmdRunScanType=0
 set netsh=0
 set advfirewallreset=0
 set ipconfigrelease=0
 set ipconfigflushdns=0
 set winsockreset=0
 set rstrui=0
 set sfc=0
 set shutdown=0
 set shutdownrr=0
 set shutdownro=0
 set wsreset=0
 set wuauservStop=0
 set cryptSvcStop=0
 set bitsStop=0
 set msiserverStop=0
 set wuauservStart=0
 set cryptSvcStart=0
 set bitsStart=0
 set msiserverStart=0
 set SoftwareDistribution=0
 set catroot2=0
 set winhttp=0
 set bitsadmin=0
 set DLLWindowsUp=0
 set InfoKey=0
 set StartScan=0
 set StartDownload=0
 set StartInstall=0
 set RestartDevice=0
 set pause=1
 set exit=1
 set print=0
 set Ligne=0

Set /A RAND=(%RANDOM%*38/32768)
set text= 
set char_sp=char_sp

set char_sp0=[0m🔧
set char_sp1=[0m🛠️
set char_sp2=[0m⚙️
set char_sp3=[0m🧰
set char_sp4=[0m🪛
set char_sp5=[0m​💻
set char_sp6=[0m💾
set char_sp7=[0m🖥️
set char_sp8=[0m🗂️
set char_sp9=[0m💽
set char_sp10=[0m🧹
set char_sp11=[0m🧽
set char_sp12=[0m🖱️
set char_sp13=[0m⌨️
set char_sp14=[0m🛜
set char_sp15=[0m🧼
set char_sp16=[0m🪣
set char_sp17=[0m⚡
set char_sp18=[0m🚀
set char_sp19=[0m⏱️
set char_sp20=[0m🃏
set char_sp21=[0m🛸
set char_sp22=[0m ✩
set char_sp23=[0m🐬
set char_sp24=[0m☄️
set char_sp25=[0m🐢
set char_sp26=[0m💘
set char_sp27=[0m🤩
set char_sp28=[0m ♬
set char_sp29=[0m💞
set char_sp30=[0m😍
set char_sp31=[0m💊
set char_sp32=[0m💖
set char_sp33=[0m🌊
set char_sp34=[0m🐋
set char_sp35=[0m💻
set char_sp36=[0m🍉
set char_sp37=[0m🦄
set char_sp38=[0m                    ࿐🌊🐋࿐ Computer ࿐࿐ Wash ࿐🐬࿐࿐
CALL SET char_sp_RAND=%%%char_sp%%RAND%%%

:: - ARISP = Any reproduction is strictly prohibited -
set ARISP=Ligne_MenuARISP
set "ARISP0= "
set "ARISP1=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP2=%%SRESET%%                         ⚠️ SOFTWARE DISCLAIMER ⚠️"
set "ARISP3=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP4=%%SRESET%% "
set "ARISP5=%%SRESET%% IF YOU HAVE PAID FOR THIS SOFTWARE, YOU HAVE BEEN SCAMMED!"
set "ARISP6=%%SRESET%% This script is completely FREE."
set "ARISP7= "
set "ARISP8=%%SRESET%% 👉 The software is provided ""AS IS"", without any warranty."
set "ARISP9=%%SRESET%% The authors or copyright holders shall NOT be liable for any damages, losses, or claims."
set "ARISP10= "
set "ARISP11=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP12=%%SRESET%%                         ⚙️ USAGE WITH ARGUMENTS"
set "ARISP13=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP14= "
set "ARISP15=%%SRESET%% - Example.cmd A1 S1       → Pre-select options in Custom mode without running."
set "ARISP16=%%SRESET%% - Example.cmd A1 S1 C55   → Pre-select options and START the program."
set "ARISP17=%%SRESET%% ⚠️ Warning: C55 will execute the selected actions. Make sure you reviewed them first!"
set "ARISP18= "
set "ARISP19=%%SRESET%% ℹ️ Note: Option D (Colorblind Mode) is NOT compatible in argument mode."
set "ARISP20=%%SRESET%%   You can enable it by modifying line 62 of the script file (change 1 → 0)."
set "ARISP21= "
set "ARISP22=%%SRESET%% ⚙️ To disable the startup warning message:"
set "ARISP23=%%SRESET%%   Modify line 2 of the script file (change 1 → 0)."
set "ARISP24=%%SRESET%% ⚡ By doing this, you acknowledge that you have read the disclaimer above."
set "ARISP25= "
set "ARISP26=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP27= "
set "ARISP28=%%SRESET%%%%SFCBLUE%% https:^/^/github.com^/Pastequeosaure^/ComputerWash.cmd^/blob^/main^/ComputerWash.cmd"
set "ARISP29=%%SRESET%%%%SFCBLUE%% https:^/^/computerwash.wixsite.com^/computer-wash%%SRESET%%"
set "ARISP30= "
set "ARISP31=%%SFCRED%%   - %%SRESET%%%%SUNDERLINE%%Press CTRL+C to EXIT%%SRESET%%"
set "ARISP32=%%SFCGREEN%%   - %%SRESET%%%%SUNDERLINE%%Press ENTER to continue%%SRESET%%"
set "ARISP33= "
set "ARISP34=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP35= "
:: Auto Ligne ARISP
set /a count=0
set /a line=0
:loopARISP
call set "value=%%ARISP%count%%%"
if defined value (
    set "Ligne_MenuARISP!line!= !value!"
    set /a line+=1
    set "Ligne_MenuARISP!line!=."
    set /a line+=1
    set /a count+=1
    goto :loopARISP
)

set header=Ligne_Menuheader
SET "header0=%SFCBLUE%  _____________________________________________________________________"
SET "header1=%SFCBLUE% /                                                                     \"
SET "header2=%SFCBLUE% ^|                                                                     ^|"
SET "header3=%SFCBLUE% ^|                                                                     ^|"
SET "header4=%SFCBLUE% ^|                           %SFCBLUE%Zone powershell                           ^|"
SET "header5=%SFCBLUE% ^|                                                                     ^|"
SET "header6=%SFCBLUE% ^|                                                                     ^|"
SET "header7=%NFCMAGENTA% ^|%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%--%NFCMAGENTA%--%SFCBLUE%-^|"
SET "header8=%NFCMAGENTA% ^|   %%SRESET%%,___,    %%NFCMAGENTA%%^|                                                        ^|"
SET "header9=%NFCMAGENTA% ^|   %%SRESET%%[O.o]    %%NFCMAGENTA%%^|         %%char_sp_RAND%% %%SRESET%%Computer Wash %%V%% %%char_sp_RAND%%         %%NFCMAGENTA%%^|"
SET "header10=%%NFCMAGENTA%% ^|   %%SRESET%%/)__)    %%NFCMAGENTA%%^|                                                        %%NFCMAGENTA%%^|"
SET "header11=%%NFCMAGENTA%% ^| %%SRESET%% --"--"--  %%NFCMAGENTA%%^|               %%SRESET%%Created by PastequeOsaure                %%NFCMAGENTA%%^|"
SET "header12=%%NFCMAGENTA%% ^\____________^|________________________________________________________^/%SRESET%"
call :AutoLigneMenu header Ligne_Menuheader noPrefix

if /I "%Color%"=="0" (
	set D?=%SFCGREEN%ON%SRESET%
)
if /I "%Color%"=="1" (
    set D?=%SFCRED%OFF%SRESET%
)
set Other=Other
set "Other0= "
set "Other1=%%SRESET%%   D ) Colorblind Mode %%D?%%"
set "Other2=%%SRESET%%   R ) Return to the main menu"
call :AutoLigneMenu Other Ligne_MenuOther noPrefix

set foot_head=foot_head
set "foot_head0=%%SFCRED%%  _____________________________________________________________________"
set "foot_head1=%%SFCRED%% ^/                                                                     ^\"
set "foot_head2=%%SFCRED%% ^| %%SRESET%% Any other entry takes you back to the main menu.                  %%SFCRED%% ^|"
set "foot_head3=%%SFCRED%% ^| %%SRESET%% What's more, if you already know the program you want, you can    %%SFCRED%% ^|"
set "foot_head4=%%SFCRED%% ^| %%SRESET%% enter it directly.                                                %%SFCRED%% ^|"
set "foot_head5=%%SFCRED%% ^| %%SRESET%% Helper Menu updated: each selection takes you to the custom       %%SFCRED%% ^|"
set "foot_head6=%%SFCRED%% ^| %%SRESET%% menu for review ^& customization.                                  %%SFCRED%% ^|"
set "foot_head7=%%SFCRED%% ^\_____________________________________________________________________^/"
Set /A RAND=(%RANDOM%*10/32768)
if %RAND%==1 (
	set "foot_head8=%%NFCGREEN%%  _____________________________________________________________________"
	set "foot_head9=%%NFCGREEN%% ^/                                                                     ^\"
	set "foot_head10=%%NFCGREEN%% ^| %%SRESET%% Quiz ) The Secret Computerwash Quiz                               %%NFCGREEN%% ^|"
	set "foot_head11=%%NFCGREEN%% \_____________________________________________________________________/"
)
call :AutoLigneMenu foot_head Ligne_Menufoot_head noPrefix


set USBA=USBA
set "USBA0=%%SRESET%% %NFCBLUE%Computer Wash USB Protection"
set "USBA1= "
set "USBA2=%%SRESET%% - Please select a volume type and its identifier."
set "USBA3= "
set "USBA4=%%SRESET%% - example : %%SFCGREEN%%select disk 0"
set "USBA5=%%SRESET%% - example : %%SFCGREEN%%select volume C"
set "USBA6= "
set "USBA7=%%SRESET%% Please wait please wait please wait please wait . .. ..."
call :AutoLigneMenu USBA Ligne_MenuUSBA noPrefix

set USBB=USBB
set "USBB0=%%SRESET%% %NFCBLUE%Computer Wash USB Protection%%SRESET%%"
set "USBB1= "
set "USBB2= - In case you used select disk please use attributes disk otherwise use attributes volume"
set "USBB3= "
set "USBB4= - 1) attributes volume set readonly"
set "USBB5= - 2) attributes volume clear readonly"
set "USBB6= "
set "USBB7= - 3) attributes disk set readonly"
set "USBB8= - 4) attributes disk clear readonly"
set "USBB9= "
set "USBB10= Any other input will give you a fatal error. The script will close."
call :AutoLigneMenu USBB Ligne_MenuUSBB noPrefix

:Varable_DEV
set Reset_Ligne_Menu=Ligne_Menu
set Ligne_Menu=Ligne_Menu
set Menu0=%SRESET% 
set Menu1= %SRESET%   A ) Automatic
set Menu2= %SRESET%   S ) Specific
set Menu3= %SRESET%   C ) Custom
call :AutoLigneMenu Menu Ligne_Menu noPrefix

set Ligne_MenuA=Ligne_MenuA
set Ligne_MenuA0=.
set Ligne_MenuA1=%SRESET%  %SUNDERLINE%%NFCYELLOW%A%SRESET%%SUNDERLINE%utomatic%SRESET%
set Ligne_MenuA2=.
set Ligne_MenuA3=.
call :AutoLigneMenu A Ligne_MenuA


set Ligne_MenuS=Ligne_MenuS
set Ligne_MenuS0=.
set Ligne_MenuS1= %SRESET%   %SUNDERLINE%%NFCYELLOW%S%SRESET%%SUNDERLINE%pecific%SRESET%
set Ligne_MenuS2=.
set Ligne_MenuS3=.
call :AutoLigneMenu S Ligne_MenuS

set Ligne_MenuC=Ligne_MenuC
set Ligne_MenuC0=.
set Ligne_MenuC1= %SRESET%   %SUNDERLINE%%NFCYELLOW%C%SRESET%%SUNDERLINE%ustomizable%SRESET%
set Ligne_MenuC2=.
set Ligne_MenuC3=.
call :AutoLigneMenu C Ligne_MenuC

:: End auto
goto :ARGC_mode_?

:: ===============================
:: 🔧 Preparateur de variable puis ARGC_mode_?
:: ===============================
:Preparateur_de_variable
set /a i=1
:loopLigne
call set "value=%%CC%i%%%"
if defined value (
    set "C%i%=%value%"
    set /a i+=1
    goto :loopLigne
)
call set "valeur=%%%choix%%%"
if "%valeur%"=="" (
	set "choix= "
    goto :mode_console
)
if /I "%valeur%"=="ArispBypass" ( 
	set Anyreproductionisstrictlyprohibited=0
	set choix=A999
	)
if /I "%valeur%"=="THE_HAUNTED_COMPUTER" (
	call :THE_HAUNTED_COMPUTER
	set choix=A999
	)
if /I "%valeur%"=="Lymbiratus" (
	call :Lymbiratus
	set choix=A999
	)
if /I "%valeur%"=="Quiz" (
	call :Quiz
	set choix=A999
	)
::A
if /I "%valeur%"=="Daily Wash" (
	set DISM=1
	set sfc=1
	set choix=C
	)
if /I "%valeur%"=="Maintenance Wash" (
	set DISM=1
	set sfc=1
	set del=1
	set del2=1
	set choix=C
	)
if /I "%valeur%"=="Washing Repair" (
	set chkdsk=1
	set cleanmgr=1
	set DISM=1
	set sfc=1
	set findstr=1
	set del=1
	set del2=1
	set choix=C
	)
if /I "%valeur%"=="Last Resort Wash" (
	set chkdsk=1
	set cleanmgr=1
	set DISM=1
	set sfc=1
	set findstr=1
	set Mrt=1
	set SignatureUpdate=1
	set MpCmdRunBootSectorScan=1
	set MpCmdRunScanType=1
	set interfaceipreset=1
	set winsockreset=1
	set advfirewallreset=1
	set ipconfigrelease=1
	set ipconfigflushdns=1
	set wsreset=1
	set del=1
	set del2=1
	set shutdownrr=1
	set choix=C
	)

::S
if /I "%valeur%"=="Antivirus Malware Scan" (
	set Mrt=1
	set SignatureUpdate=1
	set MpCmdRunBootSectorScan=1
	set MpCmdRunScanType=1
	set choix=C
	)
if /I "%valeur%"=="Dignostic RAM" (
	set mdsched=1
	set shutdownrr=1
	set choix=C
	)
if /I "%valeur%"=="Maintenance disk c" (
	set chkdsk=1
	set choix=C
	)
if /I "%valeur%"=="Disk Cleanup" (
	set cleanmgr=1
	set del=1
	set del2=1
	set choix=C
	)
if /I "%valeur%"=="Start repair Boot / Startup Windows" (
	set bcdboot=1
	set choix=C
	)
if /I "%valeur%"=="Restore system" (
	set rstrui=1
	set choix=C
	)
if /I "%valeur%"=="Reset the ip interface" (
	set interfaceipreset=1
	set winsockreset=1
	set advfirewallreset=1
	set ipconfigrelease=1
	set ipconfigflushdns=1
	set choix=C
	)
if /I "%valeur%"=="Reset WS cache" (
	set wsreset=1
	set choix=C
	)
if /I "%valeur%"=="Delete temporary files" (
	set del=1
	set del2=1
	set cleanmgr=1
	set choix=C
	)
if /I "%valeur%"=="Update driver sys et COM" (
	set pnpunattend=1
	set choix=C
	)
if /I "%valeur%"=="Verificaton system + log" (
	set DISM=1
	set sfc=1
	set findstr=1
	set choix=C
	)
if /I "%valeur%"=="Setup Chrome Firefox VLC Acrobat 7zip KeePASS" (
	set choix=C
	set chrome=1
	set Firefox=1
	set VLC=1
	set Acrobat=1
	set zip=1
	set KeePass=1
)
if /I "%valeur%"=="Full Windows Update Reset" (
	set choix=C
	set wuauservStop=1
	set wuauservStart=1
	set cryptSvcStop=1
	set cryptSvcStart=1
	set bitsStop=1
	set bitsStart=1
	set cbitsStop=1
	set cbitsStart=1
	set msiserverStop=1
	set msiserverStart=1
	set SoftwareDistribution=1
	set catroot2=1
	set winsockreset=1
	set winhttp=1
	set bitsadmin=1
	set DLLWindowsUp=1
	set shutdownrr=1
)
if /I "%valeur%"=="Force Windows Update" (
	set choix=C
	set StartScan=1
	set StartDownload=1
	set StartInstall=1
	set RestartDevice=1
)
if /I "%valeur%"=="Update All App" (
	set choix=C
	set ALL=1
)
if /I "%valeur%"=="Colorblind Mode" (
	set choix=A999
	if /I "%Color%"=="0" (
		set Color=1
		set D?=%SFCGREEN%ON%SRESET%
		call :Color
	) else (
		set Color=0
		set D?=%SFCRED%OFF%SRESET%
		call :Color
	)
)
if /I "%Color%"=="0" (
	set D?=%SFCGREEN%ON%SRESET%
)
if /I "%Color%"=="1" (
    set D?=%SFCRED%OFF%SRESET%
)
if /I "%valeur%"=="Return to the main menu" (
	set choix=A999
	goto :Preparateur_de_variable
)

call :algo

CALL SET var=%%%Reset_Ligne_Menu%%choix%%%
if "%var%"=="" ( 
	set var=%Reset_Ligne_Menu%
	)
set Ligne_Menu=%var%
if "%var%0"=="" ( 
	set var=%Reset_Ligne_Menu%
	)
:::::::::::::::::::::::::::::::::::::::::::::::::::
call :AutoLigneMenu Other Ligne_MenuOther noPrefix
if /I "%valeur%"=="%SFCGREEN%Start%SRESET%" (
	set Start?=1
	set choix=C
	cls
	call :Print Ligne_Menuheader 0
	call :Print Ligne_MenuC 0
	call :Print Ligne_MenuOther 0
	call :Print Ligne_Menufoot_head 0
	echo.
	echo %NFCGREEN%----------- %SRESET%Starting in 30 seconds. To cancel, close this window. This line acts as a safeguard %NFCGREEN%-----------%SRESET% 
	timeout /t 30 /nobreak >nul
	)
goto :ARGC_mode_?

:: ===============================
:: 🔧 ARGC_mode_? Puis ?
:: ===============================
:ARGC_mode_?
 IF [%3]==[] (
	goto :Interface
 ) else (
	call :Spinner_Start
	set Choix=%~3
	shift
	goto :Preparateur_de_variable
 )

:: ===============================
:: 🔧 Interface Pilote
:: ===============================
:Interface
 :mode_console
  cls
:Menu_?
call :Print Ligne_Menuheader 0
if /I "%Anyreproductionisstrictlyprohibited%"=="1" (
   set Anyreproductionisstrictlyprohibited=0
   call :Print Ligne_MenuARISP 0
   pause >nul
   set choix=A999
   goto :Preparateur_de_variable
)
if "%Start?%"=="1" (
	set Start?=2
	goto :Preparateur_de_variable
)
call :Print %Ligne_Menu% 0
call :Print Ligne_MenuOther 0
call :Print Ligne_Menufoot_head 0
goto :END_Menu

:: ===============================
:: 🔧 Question Pilote
:: ===============================
 :END_Menu
 echo.
 set print=0
 set Ligne_Menu=%Reset_Ligne_Menu%
 set /p choix=%SRESET% Select washing program : %SRESET%
 if "%choix%"=="" ( set choix=A999 )
 if "%choix%"==" " ( set choix=A999 )
 :: Enlever les espaces
 set "choix=%choix: =%"
 ::preparateur de variable
 goto :Preparateur_de_variable

:: ===============================
:: 🔧 Fonction Affichage
:: ===============================
:Print
SET "print=%~1"
SET /A "ligne=%~2"
:Menu
:: Accès dynamique à la variable "header%ligne%"
CALL SET var=%%%print%%ligne%%%
if "%var%"=="." ( echo. ) else ( CALL echo|set /p="%var%" )
SET /A ligne+=1
IF NOT "%var%"=="" (
    goto :Menu
) else (
	set choix=0
	exit /b
)

:: ===============================
:: 🔧 Fonction Affichage du pilote
:: ===============================
:separator
echo.
echo|set /p="%SRESET% %NFCRED%-----%NFCGREEN%-----%NFCYELLOW%-----%NFCBLUE%-----%NFCMAGENTA%-----%NFCCYAN%-----%NFCWHITE%-----"
echo|set /p="%NFCRED%-----%NFCGREEN%-----%NFCYELLOW%-----%NFCBLUE%-----%NFCMAGENTA%-----%NFCCYAN%-----%NFCWHITE%-----"
echo.
echo.
set "arg=%~2"
if "%arg%"=="only" exit /b
call :separatorIn_progress %1
exit /b
:: ===============================
:: 🔧 Fonction Affichage In progress...
:: ===============================
:separatorIn_progress
call :Log %1
echo|set /p="%SRESET%%date% %TIME%"
echo.
echo.
echo|set /p=%1
echo.
echo.
set "arg=%~1"
set "finishText=The script has finished executing all the requested commands and will close as soon as you end the pause."
if "%arg%"=="%finishText%" (
    <nul set /p ="%NFCGREEN%Finish !%SRESET%"
) else (
    <nul set /p ="In Progress..."
)
echo.
echo.
exit /b

:: ===============================
:: 🔧 Générateur des lignes printables de menus
::     (header principal, secondaire, etc.)
:: ===============================
:AutoLigneMenu
:: %1 = préfixe source (A, S, C, header)
:: %2 = tableau cible (Ligne_MenuA, Ligne_MenuS, Ligne_Menuheader…)
:: %3 = "noPrefix" optionnel
if /i "%~3"=="noPrefix" (
    set /a count=0
    set /a line=0
) else (
    set /a count=1
    set /a line=4
)
:loopGeneric
set "value=!%~1%count%!"
if defined value (
    if /i "%~3"=="noPrefix" (
        set "%~2!line!=!value!"
    ) else (
        set "%~2!line!=%NFCYELLOW% %~1%SRESET%%count%) !value!"
    )
    set /a line+=1
    set "%~2!line!=."
    set /a line+=1
    set /a count+=1
    goto :loopGeneric
)
goto :eof

:: ===============================
:: 🔧 Fonction : Spinner Start
:: ===============================
:Spinner_Start
cd /D "%~dp0".
if /i "%Spinner%"=="1" (
	goto :eof
)
if exist stop.txt (
	del stop.txt
	goto :eof
)
if exist Spinner.cmd (
	set Spinner=1
	start Spinner.cmd
) else (
	echo|set /p="%SRESET% %NFCRED%Spinner.cmd Disabled %SRESET% !"
	echo.
	echo.
)
goto :eof
:: ===============================
:: 🔧 Fonction : Spinner Stop
:: ===============================
:Spinner_OFF
cd /D "%~dp0"
if exist Spinner.cmd (
    type nul > stop.txt
) else (
    echo|set /p="%SRESET% %NFCRED%Spinner.cmd Disabled %SRESET% ! "
	echo.
	echo.
)
set Spinner=0
goto :eof

:: ===============================
:: 🔧 Erreur Exit
:: ===============================
:Erreur
echo.
echo|set /p="[0m  ERROR ¡¡¡¡ ¡¡¡ ¡¡ ¡ "
echo.
echo|set /p="[0m                       [31m__====-_  _-====__"
echo.
echo|set /p="[0m                [31m_--^^^[33m#####[31m//      \\[33m#####[31m^^^--_"
echo.
echo|set /p="[0m             [31m_-^[33m##########[31m// (    ) \\[33m##########[31m^-_"
echo.
echo|set /p="[0m            [31m-[33m############[31m//  |\^^/|  \\[33m############[31m-"
echo.
echo|set /p="[0m          [31m_/[33m############[31m//   ([34m@[31m::[34m@[31m)   [31m\\[33m############[31m\_"
echo.
echo|set /p="[0m         [31m/[33m#############[31m((     \\//     ))[33m#############[31m\"
echo.
echo|set /p="[0m        [31m-[33m###############[31m\\    (oo)    //[33m###############[31m-"
echo.
echo|set /p="[0m       [31m-[33m#################[31m\\  / "" \  //[33m#################[31m-"
echo.
echo|set /p="[0m      [31m-[33m###################[31m\\/  (_)  \//[33m###################[31m-"
echo.
echo|set /p="[0m     [31m_[33m#[31m/|[33m##########[31m/\[33m######[31m(   ' '   )[33m######[31m/\[33m##########[31m|\[33m#[31m_"
echo.
echo|set /p="[0m     [31m|/ |[33m#[31m/\[33m#[31m/\[33m#[31m/\/  \[33m#[31m/\[33m##[31m\    |    /[33m##[31m/\[33m#[31m/  \/\[33m#[31m/\[33m#[31m/\| \|"
echo.
echo|set /p="[0m     [31m|/  |/  V  |/  |/  |/ \\   |   // |/ |/  |/  |/  |/  |"
echo.
echo|set /p="[0m              [31m([33mO[31m)           \\  |  //      ([33mO[31m)"
echo.
echo|set /p="[0m                             [31m\\ | //"
echo.
echo|set /p="[0m                              [31m( | )"
echo.
echo|set /p="[0m                              [31m( [33mO [31m)"
echo.
echo|set /p="[0m                               [31m\_/[0m "
echo.
goto :eof

:: =========================================
:: 🏰 Lymbiratus - Knight’s Dungeon Quest
:: Rogue-like CMD adventure
:: =========================================
:Lymbiratus
set MAXROOM=10
call :Spinner_OFF
cls
:: --- Player stats ---


:: --- Room names ---
set "ROOMNAME0=The Dark Hall"
set "ROOMNAME1=The Glittering Chamber"
set "ROOMNAME2=The Forsaken Library"
set "ROOMNAME3=The Mossy Dungeon"
set "ROOMNAME4=The Crystal Cavern"
set "ROOMNAME5=The Shadowed Corridor"
set "ROOMNAME6=The Forgotten Armory"
set "ROOMNAME7=The Bloodstained Hall"
set "ROOMNAME8=The Ancient Chapel"
set "ROOMNAME9=The Spider’s Nest"

:: --- Enemies ---
set "ENEMY0=Goblin"
set "ENEMY1=Skeleton"
set "ENEMY2=Slime"
set "ENEMY3=Dark Knight"
set "ENEMY4=Bat"

:: --- Events ---
set "EVENT0=TREASURE"
set "EVENT1=MERCHANT"
set "EVENT2=KEYSHOP"
set "EVENT3=TRAP_CHEST"
set "EVENT4=DOOR"
set "EVENT5=BANK"
set "EVENT6=PACT"
:: --- Intro ---
:INTRO
cls
set nbderencontre=0
set boostnbderencontre=0
call :Print Ligne_Menuheader 0
call :separator " " "only"
echo %SFCYELLOW%=========================================%SRESET%
echo %SFCMAGENTA% 🏰 Lymbiratus - Knight’s Dungeon Quest%SRESET%
echo %SFCYELLOW%=========================================%SRESET%
echo.
echo %SFCWHITE% You enter a cursed dungeon...%SRESET%
echo %SFCWHITE% Everything changes with each step you take.%SRESET%
echo %SFCWHITE% Your goal: traverse the %MAXROOM% rooms and find the treasure room!%SRESET%
echo.
echo %SFCCYAN% Press any key to begin your adventure...%SRESET%
pause >nul
echo.
goto :CHAR_SELECT

:: --- Character Selection ---
:CHAR_SELECT
echo %SFCYELLOW%=========================================%SRESET%
echo        🏰 Lymbiratus - Choose Your Hero
echo %SFCYELLOW%=========================================%SRESET%
echo.
echo %NFCYELLOW% 1)%SRESET% Knight    - Balanced fighter
echo     HP: 15, ATK: 3, DEF: 0, GOLD: 10
echo.
echo %NFCYELLOW% 2)%SRESET% Warrior   - Stronger attack, less defense
echo     HP: 14, ATK: 4, DEF: 0, GOLD: 10
echo.
echo %NFCYELLOW% 3)%SRESET% Guardian  - Stronger defense, less attack
echo     HP: 16, ATK: 2, DEF: 1, GOLD: 10
echo.
set /p CHARCHOICE=Choose your hero (1-3): 

if "%CHARCHOICE%"=="1" (
    set HP=15
    set MAXHP=15
    set ATK=3
    set DEF=0
    set GOLD=10
    set KEYS=0
    set ROOM=1
    goto START_ADVENTURE
)

if "%CHARCHOICE%"=="2" (
    set HP=14
    set MAXHP=14
    set ATK=4
    set DEF=0
    set GOLD=10
    set KEYS=0
    set ROOM=1
    goto START_ADVENTURE
)

if "%CHARCHOICE%"=="3" (
    set HP=15
    set MAXHP=15
    set ATK=2
    set DEF=1
    set GOLD=10
    set KEYS=0
    set ROOM=1
    goto START_ADVENTURE
)
echo Invalid choice, try again.
goto CHAR_SELECT

:: --- Start Adventure ---
:START_ADVENTURE
echo.
echo You have chosen your hero!
echo.
echo %SFCGREEN% HP: !HP!/!MAXHP!%SRESET%   %SFCBLUE%ATK: !ATK!%SRESET%   %SFCMAGENTA%DEF: !DEF!%SRESET%   %SFCYELLOW%GOLD: !GOLD!%SRESET%   %SFCWHITE%Keys: !KEYS!%SRESET%
echo.
pause
goto GAME


:: --- Game loop ---
:GAME
call :separator " " "only"
set /a IDX=%random% %%10
echo %SFCYELLOW% =========================================%SRESET%
echo %SFCYELLOW%       🏰 Lymbiratus - Room !ROOM! / !MAXROOM!%SRESET%
echo %SFCYELLOW% =========================================%SRESET%
call set ROOMNAME=%%ROOMNAME%IDX%%%
echo.
echo Location: %SFCMAGENTA% !ROOMNAME!%SRESET%
echo.
echo %SFCGREEN% HP: !HP!/!MAXHP!%SRESET%   %SFCBLUE%ATK: !ATK!%SRESET%   %SFCMAGENTA%DEF: !DEF!%SRESET%   %SFCYELLOW%GOLD: !GOLD!%SRESET%   %SFCWHITE%Keys: !KEYS!%SRESET%
echo.
if !HP! LEQ 0 goto GAMEOVERdungeon
:: Random event
set /a MODROOM=!ROOM! %% 5
if !MODROOM! EQU 0 (
    goto ENEMY
)
:EVENTrandom
set /a EVENTIDX=%random% %%7
call set EVENT=%%EVENT%EVENTIDX%%%
if "!EVENT!"=="TREASURE" goto TREASURE
if "!EVENT!"=="MERCHANT" goto MERCHANT
if "!EVENT!"=="KEYSHOP" goto KEYSHOP
if "!EVENT!"=="TRAP_CHEST" goto TRAP_CHEST
if "!EVENT!"=="DOOR" goto DOOR
if "!EVENT!"=="BANK" goto BANK
if "!EVENT!"=="PACT" goto PACT

goto NEXTROOM

:: --- Enemy encounter ---
:ENEMY
set choice=0
set /a nbderencontre+=1
set /a ENEMYIDX=%random% %%5
call set ENEMYNAME=%%ENEMY%ENEMYIDX%%%
set /a ROOM_SCALE=ROOM/10

:: Stats de base selon le type d'ennemi
:: Stats de base selon le type d'ennemi (nerf pour début de jeu)
if !ENEMYIDX! == 0 (set /a BASEHP=3 + !ROOM_SCALE! & set /a BASEATK=1 + !ROOM_SCALE!/3)
if !ENEMYIDX! == 1 (set /a BASEHP=4 + !ROOM_SCALE! & set /a BASEATK=1 + !ROOM_SCALE!/3)
if !ENEMYIDX! == 2 (set /a BASEHP=5 + !ROOM_SCALE! & set /a BASEATK=1 + !ROOM_SCALE!/4)
if !ENEMYIDX! == 3 (set /a BASEHP=7 + !ROOM_SCALE! & set /a BASEATK=2 + !ROOM_SCALE!/3)
if !ENEMYIDX! == 4 (set /a BASEHP=2 + !ROOM_SCALE! & set /a BASEATK=1 + !ROOM_SCALE!/5)

:: HP / ATK avec petite variance
set /a ENEMYHP=!BASEHP! + %random% %%3
set /a ENEMYATK=!BASEATK! + %random% %%2

:: Nouvelle stat : DEF de base (toujours 0)
set /a ENEMYDEF=0
set nbnbderencontretemp=0

:STATBOOST
:: Amélioration dynamique : +1 sur une stat aléatoire
set /a STATBOOST=%random% %%3
if !STATBOOST! EQU 0 (set /a ENEMYHP+=1)
if !STATBOOST! EQU 1 (set /a ENEMYATK+=1)
if !STATBOOST! EQU 2 (set /a ENEMYDEF+=1)
set /a nbnbderencontretemp +=1
if !nbnbderencontretemp! LEQ !boostnbderencontre! goto STATBOOST

:ENEMY_LOOP
echo %SFCRED% ⚔️  A wild !ENEMYNAME! appears!%SRESET%
echo %SFCRED% Enemy → HP: !ENEMYHP!   ATK: !ENEMYATK!   DEF: !ENEMYDEF!%SRESET%
echo.
echo %SFCGREEN% HP: !HP!/!MAXHP!%SRESET%   %SFCBLUE%ATK: !ATK!%SRESET%   %SFCMAGENTA%DEF: !DEF!%SRESET%
echo.
set /a BRIBE=!ENEMYHP! + !ENEMYATK! + !ENEMYDEF!
echo %NFCYELLOW% 1)%SRESET% Attack
echo %NFCYELLOW% 2)%SRESET% Flee HP (-!ENEMYDEF! %SFCGREEN%HP%SRESET%)
echo %NFCYELLOW% 3)%SRESET% Bribe (-!BRIBE! %SFCYELLOW%gold%SRESET%)
echo %NFCYELLOW% 4)%SRESET% Auto-Battle (attack until the fight ends)
echo.
if "!choice!"=="4" ( 
	if !ENEMYATK! LEQ !DEF! (
		if !ATK! LEQ !ENEMYDEF! (
		set choice=0
		echo.
		echo Eternal fight !
		echo Eternal fight !
		echo Eternal fight !
		echo.
		)
	)
	if "!choice!"=="4" ( 
		goto :byapassatk
	)
)
set /p choice=Choose :  
:byapassatk
echo.
if "!choice!"=="1" (
    set /a DAMAGE=ATK-ENEMYDEF
    if !DAMAGE! LSS 0 set DAMAGE=0
    set /a ENEMYHP-=DAMAGE
    echo %SFCGREEN% You hit the !ENEMYNAME! for !DAMAGE! damage!%SRESET%
    if !ENEMYHP! LEQ 0 (
        echo %SFCGREEN% 🎉 You defeated the !ENEMYNAME!!%SRESET%
        set /a GOLDGAIN=%random% %%10 + 5
        set /a HPGAIN=%random% %%3 + 1
        set /a GOLD+=GOLDGAIN
        set /a HP+=HPGAIN
        if !HP! GTR !MAXHP! set HP=!MAXHP!
        echo.
        echo %SFCYELLOW% 🏆 Rewards:%SRESET%
        echo %SFCYELLOW% Gold: +!GOLDGAIN!%SRESET%
        echo %SFCGREEN% HP recovered: +!HPGAIN!%SRESET%
		set /a KEYS+=1
		echo %SFCWHITE% 🗝️ Key obtained +1 KEYS ^^!%SRESET%
		set /a ROOM+=10
		set /a Tempboostnbderencontre+=!ROOM!/10
		set /a ROOM-=10
		set /a boostnbderencontre+=!Tempboostnbderencontre!
        goto ARMORYSHOP
    )
	if !DEF! GEQ 0 (
	    set /a Damage=!EnemyATK! - !DEF!
	) else (
	    set /a DEFNEGAT=!DEF! * -1
    	set /a Damage=!EnemyATK! + !DEFNEGAT!
	)
    if !DAMAGE! LSS 0 set DAMAGE=0
    set /a HP-=DAMAGE
    echo %SFCRED% !ENEMYNAME! attacks back ^^!
	echo %SFCRED% You take !DAMAGE! damage. HP: !HP!%SRESET%
	echo.

    if !HP! LEQ 0 goto GAMEOVERdungeon
    goto ENEMY_LOOP
)

if "!choice!"=="2" (
    set /a HP-=ENEMYDEF
    echo %SFCCYAN% You fled safely !
    echo %SFCCYAN% You take !ENEMYDEF! damage while escaping. HP: !HP!%SRESET%
    if !HP! LEQ 0 goto GAMEOVERdungeon
    goto NEXTROOM
)

if "!choice!"=="3" (
    if !GOLD! GEQ !BRIBE! (
        set /a GOLD-=BRIBE
        echo %SFCYELLOW% 💰 You bribed the !ENEMYNAME! for !BRIBE! gold. You pass to the next room.%SRESET%
        goto NEXTROOM
    ) else (
        echo %SFCRED% Not enough gold to bribe the monster!%SRESET%
        goto ENEMY_LOOP
    )
)

if "!choice!"=="4" (
    set /a DAMAGE=ATK-ENEMYDEF
    if !DAMAGE! LSS 0 set DAMAGE=0
    set /a ENEMYHP-=DAMAGE
    echo %SFCGREEN% You hit the !ENEMYNAME! for !DAMAGE! damage!%SRESET%
    if !ENEMYHP! LEQ 0 (
        echo %SFCGREEN% 🎉 You defeated the !ENEMYNAME!!%SRESET%
        set /a GOLDGAIN=%random% %%10 + 2
        set /a HPGAIN=%random% %%3 + 1
        set /a GOLD+=GOLDGAIN
        set /a HP+=HPGAIN
		echo.
		pause
        if !HP! GTR !MAXHP! set HP=!MAXHP!
        echo.
        echo %SFCYELLOW% 🏆 Rewards:%SRESET%
        echo %SFCYELLOW% Gold: +!GOLDGAIN!%SRESET%
        echo %SFCGREEN% HP recovered: +!HPGAIN!%SRESET%
		set /a KEYS+=1
		echo %SFCWHITE% 🗝️ Key obtained +1 KEYS ^^!%SRESET%
		set /a ROOM+=10
		set /a Tempboostnbderencontre+=!ROOM!/10
		set /a ROOM-=10
		set /a boostnbderencontre+=!Tempboostnbderencontre!
        goto ARMORYSHOP
    )
	if !DEF! GEQ 0 (
	    set /a Damage=!EnemyATK! - !DEF!
	) else (
	    set /a DEFNEGAT=!DEF! * -1
    	set /a Damage=!EnemyATK! + !DEFNEGAT!
	)
    if !DAMAGE! LSS 0 set DAMAGE=0
    set /a HP-=DAMAGE
    echo %SFCRED% !ENEMYNAME! attacks back ^^!
	echo %SFCRED% You take !DAMAGE! damage. HP: !HP!%SRESET%
	echo.

    if !HP! LEQ 0 goto GAMEOVERdungeon
    goto ENEMY_LOOP
)
echo %SFCRED% ❌ Invalid choice, try again.%SRESET%
goto ENEMY_LOOP

:: --- Armory Shop ---
:ARMORYSHOP
echo.
echo %SFCYELLOW% -⚔️  Armory Shop -%SRESET%
echo %SFCGREEN% HP: !HP!/!MAXHP!%SRESET%   %SFCBLUE%ATK: !ATK!%SRESET%   %SFCMAGENTA%DEF: !DEF!%SRESET%   %SFCYELLOW%GOLD: !GOLD!%SRESET%   %SFCWHITE%Keys: !KEYS!%SRESET%
echo %NFCYELLOW% 1)%SRESET% Sword  [ +2 ATK ]   - - - - - - 15 gold
echo %NFCYELLOW% 2)%SRESET% Shield [ +2 DEF ]   - - - - - - 25 gold
echo %NFCYELLOW% 3)%SRESET% Armor  [ +5 MAXHP + Full HP ] - 20 gold
echo %NFCYELLOW% 4)%SRESET% Leave  [ +5 GOLD ]  + + + + + + 5  gold
echo.
set /p shopchoice=Choose :  
if "!shopchoice!"=="1" if !GOLD! GEQ 15 (
	set /a GOLD-=15
	set /a ATK+=2
	echo %SFCGREEN% You bought a Sword! ATK +2%SRESET%
	goto NEXTROOM
)
if "!shopchoice!"=="2" if !GOLD! GEQ 25 (
	set /a GOLD-=25
	set /a DEF+=2
	echo %SFCGREEN% You bought a Shield! DEF +2%SRESET%
	goto NEXTROOM
)
if "!shopchoice!"=="3" if !GOLD! GEQ 20 (
	set /a GOLD-=20
	set /a MAXHP+=5
	set HP=!MAXHP!
	echo %SFCGREEN% You bought an Armor! MAXHP +5%SRESET%
	goto NEXTROOM
)
if "!shopchoice!"=="4" (
	set /a GOLD+=5
	goto NEXTROOM
)
echo %SFCRED% ❌ Invalid choice, try again.%SRESET% %SFCYELLOW%GOLD: !GOLD!%SRESET%
goto ARMORYSHOP

:: --- Treasure ---
:TREASURE
echo %SFCYELLOW% 🎁 You found a room with 3 mysterious chests!%SRESET%
echo.
echo %NFCYELLOW% 1)%SRESET% The Gold Chest
echo %NFCYELLOW% 2)%SRESET% The Blood Chest
echo %NFCYELLOW% 3)%SRESET% The Glitch Chest
echo.
set /p chestchoice=Choose a chest to open: 
echo.
:: --- Gold Chest ---
if "!chestchoice!"=="1" (
    set /a goldfound=%random% %%10 + 5
    set /a GOLD+=goldfound
    echo %SFCYELLOW% 💰 You open the Gold Chest and find !goldfound! gold!%SRESET%
    goto NEXTROOM
)

:: --- Blood Chest ---
if "!chestchoice!"=="2" (
    set /a HPGAIN=%random% %%3 + 5
    set /a HP+=HPGAIN
    if !HP! GTR !MAXHP! set HP=!MAXHP!
    echo %SFCGREEN% ❤️ You open the Blood Chest and recover !HPGAIN! HP %SRESET%
    goto NEXTROOM
)

:: --- Glitch Chest ---
if "!chestchoice!"=="3" (
    set /a ROLL=%random% %%4
    if !ROLL! EQU 0 (
        set /a KEYS+=1
        echo %SFCWHITE% 🗝️ Glitch Chest gives you a Key ! Keys: +1 %SRESET%
		echo.
		pause
        goto NEXTROOM
    )
    if !ROLL! EQU 1 (
        set /a ATK+=1
        echo %SFCRED% ⚔️ Glitch Chest gives you a Weapon ! ATK +1 %SRESET%
		echo.
		pause
        goto NEXTROOM
    )
    if !ROLL! EQU 2 (
        set /a DEF+=1
        echo %SFCCYAN% 🛡️ Glitch Chest gives you Armor ! DEF +1 %SRESET%
		echo.
		pause
        goto NEXTROOM
    )
    if !ROLL! EQU 3 (
        set /a MAXHP+=1
        set /a HP+=1
        echo %SFCGREEN% 💖 Glitch Chest increases MAXHP +1 %SRESET%
		echo.
		pause
        goto NEXTROOM
    )
)
:: --- Invalid choice ---
echo %SFCRED% ❌ Invalid choice! Pick 1, 2, or 3.%SRESET%
goto TREASURE

:: --- Bank Event ---
:BANK
echo.
echo %SFCYELLOW% 🏦 You find a wandering banker!%SRESET%
echo.

:: Vérifie s’il y a un dépôt précédent
if defined BANKDEPOSIT (
    set /a REWARD=!BANKDEPOSIT!*3
    set /a GOLD+=REWARD
    echo %SFCGREEN% 💰 Your previous deposit of !BANKDEPOSIT! gold has matured^^! You receive !REWARD! gold.%SRESET%
    set BANKDEPOSIT=
	echo.
    pause
    goto NEXTROOM
)

echo %SFCWHITE% How much gold would you like to deposit?%SRESET%
echo.
if !GOLD! GEQ 1 echo %NFCYELLOW% 1)%SRESET% 1 Gold
if !GOLD! GEQ 2 echo %NFCYELLOW% 2)%SRESET% 2 Gold
if !GOLD! GEQ 3 echo %NFCYELLOW% 3)%SRESET% 3 Gold
if !GOLD! GEQ 4 echo %NFCYELLOW% 4)%SRESET% 4 Gold
if !GOLD! LEQ 0 echo %NFCYELLOW% 5)%SRESET% Leave without depositing (-5 Gold penalty)
echo.
set /p choice=Choose: 
echo.
if "!choice!"=="1" if !GOLD! GEQ 1 (set /a GOLD-=1 & set BANKDEPOSIT=1 & echo %SFCGREEN% ✅ You deposited 1 gold!%SRESET% & echo. & pause & goto NEXTROOM)
if "!choice!"=="2" if !GOLD! GEQ 2 (set /a GOLD-=2 & set BANKDEPOSIT=2 & echo %SFCGREEN% ✅ You deposited 2 gold!%SRESET% & echo. & pause & goto NEXTROOM)
if "!choice!"=="3" if !GOLD! GEQ 3 (set /a GOLD-=3 & set BANKDEPOSIT=3 & echo %SFCGREEN% ✅ You deposited 3 gold!%SRESET% & echo. & pause & goto NEXTROOM)
if "!choice!"=="4" if !GOLD! GEQ 4 (set /a GOLD-=4 & set BANKDEPOSIT=4 & echo %SFCGREEN% ✅ You deposited 4 gold!%SRESET% & echo. & pause & goto NEXTROOM)
if "!choice!"=="5" (set /a GOLD-=5 & echo %SFCRED% 💸 You left without depositing. You lost 5 gold.%SRESET% & pause & goto NEXTROOM)

echo %SFCRED% ❌ Not enough gold or invalid choice, try again.%SRESET%
goto BANK

:: --- Merchant ---
:: --- Merchant ---
:MERCHANT
echo %SFCYELLOW% 🛒 You meet a traveling merchant!%SRESET%
echo.

:: Choix aléatoire des formulations
set /a FORMULA=%random% %%3
if !FORMULA! EQU 0 (
    set PMSG1=Restore your health      [ +3 HP ]    - 5 gold
    set PMSG2=Buy a sword              [ +1 ATK ]   - 10 gold
    set PMSG3=Buy a shield             [ +1 DEF ]   - 15 gold
    set PMSG4=Leave                    [ +1 GOLD ]  + 1 gold
) else if !FORMULA! EQU 1 (
    set PMSG1=Drink a potion           [ +3 HP ]    - 5 gold
    set PMSG2=Sharp blade              [ +1 ATK ]   - 10 gold
    set PMSG3=Sturdy protection        [ +1 DEF ]   - 15 gold
    set PMSG4=Walk away                [ +1 GOLD ]  + 1 gold
) else (
    set PMSG1=Rejuvenate                [ +3 HP ]    - 5 gold
    set PMSG2=Enhance weapon            [ +1 ATK ]   - 10 gold
    set PMSG3=Fortify armor             [ +1 DEF ]   - 15 gold
    set PMSG4=Leave calmly              [ +1 GOLD ]  + 1 gold
)

echo %NFCYELLOW% 1)%SRESET% !PMSG1!
echo %NFCYELLOW% 2)%SRESET% !PMSG2!
echo %NFCYELLOW% 3)%SRESET% !PMSG3!
echo %NFCYELLOW% 4)%SRESET% !PMSG4!
echo.
set /p choice=Buy: 
echo.

if "!choice!"=="1" if !GOLD! GEQ 5 (
	set /a GOLD-=5
	set /a HP+=3
	if !HP! GTR !MAXHP! set HP=!MAXHP!
	echo %SFCGREEN% You drink a potion and recover 3 HP%SRESET%
	goto NEXTROOM
)
if "!choice!"=="2" if !GOLD! GEQ 10 (
	set /a GOLD-=10
	set /a ATK+=1
	echo %SFCGREEN% You buy a sword! ATK +1%SRESET%
	goto NEXTROOM
)
if "!choice!"=="3" if !GOLD! GEQ 10 (
	set /a GOLD-=10
	set /a DEF+=1
	echo %SFCGREEN% You buy a shield! DEF +1%SRESET%
	goto NEXTROOM
)
if "!choice!"=="4" (
	set /a GOLD+=1
	goto NEXTROOM
)

echo %SFCRED% ❌ Invalid choice, try again.%SRESET% %SFCYELLOW%GOLD: !GOLD!%SRESET%
goto MERCHANT

:: --- Key Shop ---
:KEYSHOP
echo %SFCYELLOW% 🔑 You meet a locksmith!%SRESET%
echo.

:: Formulations aléatoires
set /a FORMULA=%random% %%3
if !FORMULA! EQU 0 (
    set KMSG1=Buy a key                  [ -5 gold ]
    set KMSG2=Leave                      [ +1 GOLD ]
) else if !FORMULA! EQU 1 (
    set KMSG1=Purchase a key             [ -5 gold ]
    set KMSG2=Walk away                  [ +1 GOLD ]
) else (
    set KMSG1=Acquire a key              [ -5 gold ]
    set KMSG2=Leave peacefully           [ +1 GOLD ]
)

echo %NFCYELLOW% 1)%SRESET% !KMSG1!
echo %NFCYELLOW% 2)%SRESET% !KMSG2!
echo.
set /p choice=Choose : 
echo.

if "!choice!"=="1" if !GOLD! GEQ 5 (
	set /a GOLD-=5 & set /a KEYS+=1 & echo %SFCGREEN% You buy a key! Keys: !KEYS!%SRESET%
	goto NEXTROOM
)
if "!choice!"=="2" (
	set /a GOLD+=1 
	goto NEXTROOM
)

echo %SFCRED% ❌ Invalid choice, try again.%SRESET%
goto KEYSHOP


:: --- Trap ---
:TRAP
echo %SFCRED% 💀 A trap^^!
echo.
if !KEYS! GEQ 1 (
    set /a KEYS-=1
    set /a msg=%random% %%4
    if !msg! EQU 0 echo %SRESET% 🗝️ You used a key to unlock a hidden passage and avoid the trap.
    if !msg! EQU 1 echo %SRESET% 🗝️ The key glows... the trap vanishes before your eyes.
    if !msg! EQU 2 echo %SRESET% 🗝️ You used a key to bypass the cursed trap.
    if !msg! EQU 3 echo %SRESET% 🗝️ You used a key to unlock a hidden mechanism and avoid the trap.
) else (
    set /a damage=%random% %%3 +1
    set /a HP-=damage
    echo %SFCRED% 💀 A trap^^! You lose !damage! HP!%SRESET%
    if !HP! LEQ 0 (
        echo %SFCRED% 💀 You succumbed to the trap...%SRESET%
        goto GAMEOVERdungeon
    )
)
echo.
pause
goto NEXTROOM

:: --- Trap in front of treasure chest ---
:TRAP_CHEST
echo %SFCYELLOW% 🔒 You find The Gold Chest, but there seems to be a trap in front!%SRESET%
echo.
echo|set /p="%NFCYELLOW% 1)%SRESET% Try to sneak past           – 50%% chance of losing the chest & some HP."
echo.
echo|set /p="%NFCYELLOW% 2)%SRESET% Trigger the trap on purpose – 100%% chance to win the chest & lose HP."
echo.
echo.
set /p choice=Choose :  
echo.
if "!choice!"=="1" (
    set /a TRIGGER=%random% %%2
    if !TRIGGER! EQU 0 (
        set /a damage=%random% %%3 +1
        set /a HP-=damage
        echo %SFCRED% 💀 You failed to sneak! The trap hits you for !damage! HP.%SRESET%
        if !HP! LEQ 0 (
            echo %SFCRED% 💀 You died from the trap!%SRESET%
            goto GAMEOVERdungeon
        )
    ) else (
        echo %SFCGREEN% 👍 You sneak past safely.%SRESET%
		:: Toujours ouvrir le coffre et donner de l'or
	    set /a goldfound=%random% %%10 + 1
	    set /a GOLD+=goldfound
	    echo %SFCYELLOW% 💰 You open the Gold Chest and find !goldfound! gold!%SRESET%
	    goto NEXTROOM
	    )
    goto NEXTROOM
)

if "!choice!"=="2" (
    set /a damage=%random% %%3 +1
    set /a HP-=damage
    echo %SFCRED% ⚡ You trigger the trap deliberately and take !damage! HP damage.%SRESET%
    if !HP! LEQ 0 (
        echo %SFCRED% 💀 You died from the trap!%SRESET%
        echo.
        goto GAMEOVERdungeon
    )
    :: Donner l'or du coffre
    set /a goldfound=%random% %%10 + 1
    set /a GOLD+=goldfound
    echo %SFCYELLOW% 💰 You open the Gold Chest and find !goldfound! gold!%SRESET%
    goto NEXTROOM
)
:: Si entrée invalide
echo %SFCRED% ❌ Invalid choice, try again.%SRESET%
goto TRAP_CHEST

:: =========================================
:: 🎭 Pact System
:: =========================================
:PACT
echo %SFCMAGENTA% ☯ You feel a mystical presence...%SRESET%
echo.
set /a pactrand=!random! %%100

:: 0-32 = Angelic, 33-65 = Demonic, 66-98 = Iron, 99 = No Pact
if !pactrand! lss 33 goto PACT_ANGEL
if !pactrand! lss 66 goto PACT_DEMON
if !pactrand! lss 99 goto PACT_IRON
echo.
echo %SFCYELLOW% ✨ Miracle! No pact is offered here...%SRESET%
echo.
pause
goto NEXTROOM


:PACT_ANGEL
echo %SFCWHITE% 😇 Angelic Pact%SRESET%
echo.
echo Choose your impact :
echo.
echo %NFCYELLOW% 1)%SRESET% -1 DEF → +10 MAX HP
echo %NFCYELLOW% 2)%SRESET% -1 DEF → +2 ATK
echo.
set /p choice=Your choice? 
echo.
if "!choice!"=="1" (
    set /a DEF-=1
    set /a MAXHP+=5
	set /a HP+=5
) else if "!choice!"=="2" (
    set /a DEF-=1
    set /a ATK+=2
) else (goto PACT_ANGEL)
goto PACT_CHECK


:PACT_DEMON
echo %SFCRED% 👹 Demonic Pact%SRESET%
echo.
echo Choose your impact :
echo.
echo %NFCYELLOW% 1)%SRESET% -5 MAX HP → +1 ATK
echo %NFCYELLOW% 2)%SRESET% -5 MAX HP → +20 GOLD
echo.
set /p choice=Your choice? 
echo.
if "!choice!"=="1" (
    set /a MAXHP-=5
    set /a ATK+=1
) else if "!choice!"=="2" (
    set /a MAXHP-=5
    set /a GOLD+=15
) else (goto PACT_DEMON)
goto PACT_CHECK


:PACT_IRON
echo %SFCBLUE% ⚒ Iron Pact%SRESET%
echo.
echo Choose your impact :
echo.
echo %NFCYELLOW% 1)%SRESET% -1 ATK → +5 MAX HP
echo %NFCYELLOW% 2)%SRESET% -2 ATK → +1 DEF
echo.
set /p choice=Your choice? 
echo.
if "!choice!"=="1" (
    set /a ATK-=1
    set /a MAXHP+=5
) else if "!choice!"=="2" (
    set /a ATK-=2
    set /a DEF+=1
) else (goto PACT_IRON)
goto PACT_CHECK


:PACT_CHECK
:: Check for negative stats
if !ATK! lss 1 (
    echo %SFCRED%⚔ You no longer have enough attack to fight...%SRESET%
    echo You are doomed to flee every battle!
    set ATK=0
)

if !DEF! lss 0 (
    echo %SFCRED%🛡 Your armor is shattered! Every hit deals +1 extra damage.%SRESET%
)

if !MAXHP! leq 0 (
    echo %SFCRED%💀 Your body cannot withstand the pact... GAME OVER.%SRESET%
    pause
    goto GAMEOVER
)

goto NEXTROOM

:: --- Door / Key check ---
:DOOR
echo %SFCYELLOW% 🚪 You reach a locked door!%SRESET%
if !GOLD! GEQ 20 echo %NFCYELLOW% 1)%SRESET% Pay 20 gold to open the door (greedy locksmith 😅)
if !HP! GEQ 13 echo %NFCYELLOW% 2)%SRESET% Sacrifice 12 HP to pass (vampire locksmith 🧛‍♂️)
if !KEYS! GEQ 1 echo %NFCYELLOW% 3)%SRESET% Use a key to open the door
echo|set /p=" %NFCYELLOW% 4)%SRESET% Take a detour (-5 rooms)"
echo.
echo.
set /p choice=Choose : 
echo.
if "!choice!"=="4" (
	set /a ROOM-=6
	echo %SFCBLUE% You take a detour! Moving back 5 rooms.%SRESET%
	goto NEXTROOM
)
if "!choice!"=="1" if !GOLD! GEQ 20 (
	set /a GOLD-=20 & echo %SFCGREEN% 💰 You pay 20 gold to open the door. Greedy locksmith laughs 😅%SRESET%
	goto NEXTROOM
)
if "!choice!"=="1" if !GOLD! LSS 20 (
	echo %SFCRED%Not enough gold!%SRESET%
	goto DOOR
)
if "!choice!"=="2" if !HP! GEQ 12 (
	set /a HP-=12
	echo %SFCRED% 🩸 You sacrifice 12 HP. The vampire locksmith smiles 😈%SRESET%
	goto NEXTROOM
)
if !KEYS! GEQ 1 if "!choice!"=="3" (
	set /a KEYS-=1 & echo %SFCGREEN% 🗝️  You use a key to open the door.%SRESET%
	goto NEXTROOM
)
goto DOOR

:: --- Next Room ---
:NEXTROOM
set /a ROOM+=1
if !ROOM! GTR !MAXROOM! goto WIN
goto GAME

:: --- Win ---
:: --- Win ---
:WIN
set /a ROOM-=1
call :separator " " "only"
:: launch fireworks
for /l %%i in (1,1,10) do (
    cls
    call :FireworkTREASURE
    timeout /t 1 >nul
)

:: Choix de fin
echo %SFCYELLOW%=========================================%SRESET%
echo %SFCMAGENTA%   🎉 You completed the dungeon! 🎉%SRESET%
echo %SFCYELLOW%=========================================%SRESET%
echo.
echo %NFCYELLOW% 1)%SRESET% End your adventure here
echo %NFCYELLOW% 2)%SRESET% Shall we extend the game ? 🔥 ( GOLD : !GOLD!X2 + MAXROOM !MAXROOM!X2)
echo.
set /p choice=Choose :  

if "!choice!"=="1" goto ENDdungeon
if "!choice!"=="2" (
	set /a GOLD=!GOLD!*2
	set /a MAXROOM=!MAXROOM!*2
	echo.
    echo %SFCCYAN% 🌌 Extand Mode unlocked !%SRESET%
    goto NEXTROOM
)

goto WIN

:: --- Firework celebration ---
:FireworkTREASURE
:: Choix de couleurs aléatoires pour chaque ligne
for /L %%i in (1,1,6) do (
    set /a r=%random% %%5
    if !r! EQU 0 set c=%SFCRED%
    if !r! EQU 1 set c=%SFCBLUE%
    if !r! EQU 2 set c=%SFCGREEN%
    if !r! EQU 3 set c=%SFCMAGENTA%
    if !r! EQU 4 set c=%SFCCYAN%

    if %%i==1 echo !c! =========================================%SRESET%
    if %%i==2 echo !c!         🏆 The Treasure Room !
    if %%i==3 echo !c! =========================================%SRESET%
    if %%i==4 echo !c! You have made it through all the rooms of the dungeon...
    if %%i==5 echo !c! And here is the long-awaited treasure!
    if %%i==6 (
        echo.
        echo !c!        $$$$$$$$$$$$$$$$$$$$$
        echo !c!        $  🏰          💎   $
        echo !c!        $      TREASURE     $
        echo !c!        $  💎          🏰   $
        echo !c!        $$$$$$$$$$$$$$$$$$$$$
        echo.
        echo !c! ✨ Final Hero Stats ✨
        echo !c! HP: !HP!/!MAXHP!
        echo !c! ATK: !ATK!
		echo !c! DEF: !DEF!
        echo !c! Gold: !GOLD!
		echo !c! Keys: !KEYS!
        echo.
        echo !c! Rooms cleared: !ROOM! / !MAXROOM!
        echo !c! Monsters defeated: !nbderencontre!
        echo.
        echo !c! 🏆 You are victorious! 🏆%SRESET%
    )
)
echo.
exit /b

:: --- Game Over ---
:GAMEOVERdungeon
echo %SFCRED% =========================================%SRESET%
echo %SFCRED%   💀 GAME OVER - You have fallen...%SRESET%
echo %SFCRED% =========================================%SRESET%
echo.
echo %SFCGREEN% Final Hero Stats:%SRESET%
echo    %SFCGREEN%HP:%SRESET% !HP!/!MAXHP!
echo    %SFCBLUE%ATK:%SRESET% !ATK!
echo    %SFCMAGENTA%DEF:%SRESET% !DEF!
echo    %SFCYELLOW%GOLD:%SRESET% !GOLD!
echo    %SFCWHITE%Keys:%SRESET% !KEYS!
echo.
echo %SFCCYAN% Rooms cleared:%SRESET% !ROOM! / !MAXROOM!
echo %SFCCYAN% Monsters defeated:%SRESET% !nbderencontre!
echo.
echo %SFCRED% Better luck next time...%SRESET%
echo.
goto :ENDdungeon

:ENDdungeon
pause
goto :Lymbiratus

:: ===============================
:: 🔧 Secret THE_HAUNTED_COMPUTER
:: ===============================
:THE_HAUNTED_COMPUTER
:: The Haunted Computer 👻💻 - CMD Adventure Game
:: Author: ChatGPT
:: Description: Mini interactive story with multiple choices and endings
:TITLE
cls
color 0a
echo This game is cursed and it's not a joke !
echo.
echo ==========================================
echo        👻  THE HAUNTED COMPUTER  💻
echo ==========================================
echo.
echo An old terminal is blinking in front of you...
echo.
echo 1^) Explore the C:\Ancien directory

echo 2^) Type a random command

echo 3^) Restart the machine

echo.
set /p choice=What do you want to do? (1-3) : 
if "%choice%"=="1" goto DIRECTORY
if "%choice%"=="2" goto RANDOMCMD
if "%choice%"=="3" goto REBOOT
goto TITLE

:DIRECTORY
call :separator " " "only"
color 0e
echo You open C:\Ancien ...
echo.
echo Inside, you find two strange files:
echo - ghost.sys

echo - memory.bat

echo.
echo 1^) Open ghost.sys

echo 2^) Run memory.bat

echo 3^) Leave this folder
echo.
set /p choice=Your choice (1-3) : 
if "%choice%"=="1" goto GHOST
if "%choice%"=="2" goto MEMORY
if "%choice%"=="3" goto TITLE
goto DIRECTORY

:GHOST
call :separator " " "only"
color 0c
echo The file opens... suddenly a face appears.
echo.
echo 👻 "You weren't supposed to wake me..."
echo.
echo 👻 "I'm going to sleep... "
call :CFGON
timeout /t 10 /nobreak >nul
shutdown /h
goto :VIRUS

:MEMORY
call :separator " " "only"
color 0b
echo The script runs... a message appears:
echo.
echo "Admin password: FREEDOM"
echo.
echo 1^) Return to main menu

echo 2^) Try the password
echo.
set /p choice=Your choice (1-2) : 
if "%choice%"=="1" goto TITLE
if "%choice%"=="2" goto ADMIN

:RANDOMCMD
call :separator " " "only"
set /a rand=%random%%%3
if %rand%==0 goto BUG
if %rand%==1 goto CLUE
if %rand%==2 goto VIRUS

:BUG
color 0c
echo The machine displays a fatal error message...
echo.
tree c:
echo.
echo [CRITICAL_ERROR] SYSTEM HALTED
echo.
goto :GAMEOVER

:CLUE
color 0a
echo.
echo The command gives a clue:
echo "Look inside C:\Ancien"
echo.
pause
goto TITLE

:VIRUS
color 0c
echo ⚠️  A virus is spreading... the screen blurs.
echo You hear a voice: "Stay here forever..."
echo "I will stay with you forever… "
call :CFGOFF
echo.
goto :GAMEOVER

:REBOOT
call :separator " " "only"
color 07
echo The machine is restarting...
echo.
ping -n 2 localhost >nul
color 0a
echo But instead of the BIOS, you fall into an endless loop.
echo.
echo You are trapped forever inside the computer.
echo.
shutdown /r /t 60 /c "👻 The computer haunts your restart... 60s left! "
pause
goto END

:ADMIN
cls
call :CFGON
:: launch fireworks
for /l %%i in (1,1,30) do (
    cls
    call :Firework
    timeout /t 1 >nul
)

pause
goto END

:GAMEOVER
echo.
echo *** GAME OVER ***
echo.
pause
goto :THE_HAUNTED_COMPUTER

:Firework
set /a r=%random% %%5
if !r! EQU 0 (set c=%SFCRED%) 
if !r! EQU 1 (set c=%SFCBLUE%)
if !r! EQU 2 (set c=%SFCGREEN%)
if !r! EQU 3 (set c=%SFCMAGENTA%)
if !r! EQU 4 (set c=%SFCCYAN%)
echo %SFCYELLOW%%SBOLD%
echo.
echo|set /p="!c!      ██    ██  ██ ██████  ██████  ████████  ██████  ██████  ███████ "
echo.
echo|set /p="!c!      ██    ██  ██ ██   ██ ██   ██    ██    ██    ██ ██   ██ ██ "
echo.
echo|set /p="!c!      ██    ██  ██ ██████  ██████     ██    ██    ██ ██████  █████ "
echo.
echo|set /p="!c!       ██  ██   ██ ██      ██         ██    ██    ██ ██   ██ ██ "
echo.
echo|set /p="!c!        ████    ██ ██      ██         ██     ██████  ██   ██ ███████ "
echo.
echo.
echo|set /p="!c!                       ✨ CONGRATULATIONS! ✨ "
echo.
echo|set /p="!c!            You have freed the soul of the haunted computer!%SRESET% "
echo.
echo.
exit /b

:CFGON
powercfg.exe /hibernate on
goto :eof

:CFGOFF
powercfg.exe /hibernate off
goto :eof

:END
exit /b

:: ===============================
:: 🔧 Secret Quiz
:: ===============================
:Quiz
call :Spinner_OFF
cls
call :Print Ligne_Menuheader 0
echo.
echo|set /p="%SRESET%  %NFCRED%%SUNDERLINE%Welcome %NFCGREEN%to %NFCYELLOW%the %NFCBLUE%secret %NFCMAGENTA%Computerwash %NFCCYAN%QUIZ%SRESET%%SUNDERLINE% ^!%SRESET% "
echo.
echo.
echo|set /p="%SRESET%  You'll get 5 random questions ! "
echo.
echo|set /p="%SRESET%  One question every 30 seconds. "
echo.
echo|set /p="%SRESET%  Do you have all the answers ? "
echo.
echo.
echo|set /p="%SRESET%  Starting in 10 seconds! "
echo.
timeout /t 10 /nobreak >nul
:: Emojis
set Emoji0=😍
set Emoji1=🤓
set Emoji2=🛠️
set Emoji3=💻

:: Commandes et descriptions
:: Commandes et questions
set C1_Desc=Which command checks and repairs disk errors on C:?
set C1_Cmd=Chkdsk C: /F /R /I

set C2_Desc=Which command defragments the C: drive?
set C2_Cmd=Defrag C: /U /V

set C3_Desc=Which command cleans all temporary files?
set C3_Cmd=Cleanmgr /sagerun:65535

set C4_Desc=Which command repairs the Windows system image?
set C4_Cmd=DISM.exe /Online /Cleanup-image /Restorehealth

set C5_Desc=Which command scans all system files for integrity issues?
set C5_Cmd=Sfc /scannow

set C6_Desc=Which tool checks for malware and may take several hours?
set C6_Cmd=Mrt.exe (This may take several hours)

set C7_Desc=Which command updates Windows Defender signatures?
set C7_Cmd=MpCmdRun.exe -SignatureUpdate

set C8_Desc=Which command performs a boot sector scan with Windows Defender?
set C8_Cmd=MpCmdRun.exe -Scan -ScanType -BootSectorScan

set C9_Desc=Which command performs a quick scan with Windows Defender?
set C9_Cmd=MpCmdRun.exe -Scan -ScanType 2

set C10_Desc=Which command audits the system using Pnpunattend?
set C10_Cmd=Pnpunattend auditsystem /s /l

set C11_Desc=Which command displays the current console mode?
set C11_Cmd=Mode

set C12_Desc=Which tool tests the RAM memory?
set C12_Cmd=Mdsched

set C13_Desc=Which command rebuilds the boot files for Windows?
set C13_Cmd=bcdboot C:\Windows /s C: /f ALL

set C14_Desc=Which command resets the Microsoft Store cache?
set C14_Cmd=Wsreset

set C15_Desc=Which command opens the system restore wizard?
set C15_Cmd=Rstrui.exe

set C16_Desc=Which command upgrades all apps silently via winget?
set C16_Cmd=winget upgrade --all --silent --accept-package-agreements --accept-source-agreements

set C17_Desc=Which command installs Google Chrome via winget?
set C17_Cmd=Winget install google.chrome

set C18_Desc=Which command installs Mozilla Firefox via winget?
set C18_Cmd=Winget install Mozilla.Firefox

set C19_Desc=Which command installs VLC media player via winget?
set C19_Cmd=Winget install VideoLAN.VLC

set C20_Desc=Which command installs Adobe Acrobat Reader 64-bit via winget?
set C20_Cmd=Winget install Adobe.Acrobat.Reader.64-bit

set C21_Desc=Which command installs 7zip via winget?
set C21_Cmd=Winget install 7zip.7zip

set C22_Desc=Which command installs KeePass via winget?
set C22_Cmd=Winget install DominikReichl.KeePass

set C23_Desc=Which command stops the Windows Update service?
set C23_Cmd=net stop wuauservStop

set C24_Desc=Which command stops the cryptographic service?
set C24_Cmd=net stop cryptSvc

set C25_Desc=Which command stops the BITS service?
set C25_Cmd=net stop bits

set C26_Desc=Which command stops the MSI Installer service?
set C26_Cmd=net stop msiserver

set C27_Desc=Which command deletes all user temp files?
set C27_Cmd=Del /S /F /Q C:\Users\PASTEQ~1\AppData\Local\Temp

set C28_Desc=Which command deletes Windows temp files?
set C28_Cmd=Del /S /F /Q C:\Windows\Temp

set C29_Desc=Which command clears the SoftwareDistribution folder?
set C29_Cmd=rd /s /q C:\Windows\SoftwareDistribution

set C30_Desc=Which command clears the catroot2 folder?
set C30_Cmd=rd /s /q C:\Windows\System32\catroot2

set C31_Desc=Which command resets the Winsock catalog?
set C31_Cmd=Netsh winsock reset

set C32_Desc=Which command resets the IP interface?
set C32_Cmd=Netsh interface ip reset

set C33_Desc=Which command resets the Windows Firewall?
set C33_Cmd=Netsh advfirewall reset

set C34_Desc=Which command releases the current IP address?
set C34_Cmd=Ipconfig /release

set C35_Desc=Which command flushes the DNS cache?
set C35_Cmd=Ipconfig /flushdns

set C36_Desc=Which command resets the WinHTTP proxy settings?
set C36_Cmd=netsh winhttp reset proxy

set C37_Desc=Which command resets all BITS jobs for all users?
set C37_Cmd=bitsadmin /reset /allusers

set C38_Desc=Which action re-registers Windows Update DLLs?
set C38_Cmd=Re-registering Windows Update DLLs...

set C39_Desc=Which command starts the Windows Update service?
set C39_Cmd=net Start wuauservStart

set C40_Desc=Which command starts the cryptographic service?
set C40_Cmd=net Start cryptSvc

set C41_Desc=Which command starts the BITS service?
set C41_Cmd=net Start bits

set C42_Desc=Which command starts the MSI Installer service?
set C42_Cmd=net Start msiserver

set C43_Desc=Which command starts a Windows Update scan?
set C43_Cmd=UsoClient StartScan

set C44_Desc=Which command starts downloading Windows updates?
set C44_Cmd=UsoClient StartDownload

set C45_Desc=Which command starts installing Windows updates?
set C45_Cmd=UsoClient StartInstall

set C46_Desc=Which command restarts the device after updates?
set C46_Cmd=UsoClient RestartDevice

set C47_Desc=Which command restarts the computer?
set C47_Cmd=Shutdown /r

set C48_Desc=Which command restarts the computer into advanced options?
set C48_Cmd=Shutdown /r /o

set C49_Desc=Which command shuts down the computer?
set C49_Cmd=Shutdown /s

:: Score
set score=0

:: ===== Main =====
:: Liste des indices 1..49
set Questions=1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49

:: Tirage 5 questions aléatoires sans répétition
for %%I in (1 2 3 4 5) do (
    set /a count=0
    for %%X in (!Questions!) do set /a count+=1

    set /a rnd=!random! %% count
    set idx=0
    for %%X in (!Questions!) do (
        if !idx! EQU !rnd! set Qnum=%%X
        set /a idx+=1
    )

    :: Supprimer Qnum de la liste
    set NewQuestions=
    for %%X in (!Questions!) do (
        if not %%X==!Qnum! set NewQuestions=!NewQuestions! %%X
    )
    set Questions=!NewQuestions!

    call :AskQuestion !Qnum!
)

echo %SBOLD%Quiz finished! Your score: !score! / 5%SRESET%
if !score! EQU 5 (
	echo.
	echo|set /p="[0m5/5 Unloked THE_HAUNTED_COMPUTER"
	echo.
	echo.
	echo|set /p="Will you manage to free the soul of your haunted computer… and unlock the next game ? "
	echo.
	set "foot_head8=%%NFCGREEN%%  _____________________________________________________________________"
	set "foot_head9=%%NFCGREEN%% ^/                                                                     ^\"
	set "foot_head10=%%NFCGREEN%% ^| %%SRESET%% THE_HAUNTED_COMPUTER ) Will you manage to free the soul of your   %%NFCGREEN%% ^|"
	set "foot_head11=%%NFCGREEN%% ^| %%SRESET%% haunted computer… and unlock the next game ?                      %%NFCGREEN%% ^|"
	set "foot_head12=%%NFCGREEN%% \_____________________________________________________________________/"
call :AutoLigneMenu foot_head Ligne_Menufoot_head noPrefix
)
pause
goto :eof

:: ===== Functions =====
:AskQuestion
:: %1 = question index
set QIndex=%1

:: Récupération de la question
call set "QuestionDesc=%%C%QIndex%_Desc%%"
call set "QuestionCmd=%%C%QIndex%_Cmd%%"

:: Emoji aléatoire
set /a eidx=!random! %% 4
call set "Emoji=%%Emoji!eidx!%%"

:: Génération des mauvaises réponses (3 autres indices différents)
set /a b1=(!QIndex! %% 49 +1)
set /a b2=(!QIndex!+1) %% 49 +1
set /a b3=(!QIndex!+2) %% 49 +1

call set "Options0=%%C%QIndex%_Cmd%%"
call set "Options1=%%C%b1%_Cmd%%"
call set "Options2=%%C%b2%_Cmd%%"
call set "Options3=%%C%b3%_Cmd%%"

:: ===== Mélange aléatoire des options =====
:shuffle
set /a order0=!random! %% 4
set /a order1=!random! %% 4
set /a order2=!random! %% 4
set /a order3=!random! %% 4

if !order1!==!order0! set /a order1=(!order1!+1)%%4 & goto shuffle
if !order2!==!order0! set /a order2=(!order2!+1)%%4 & goto shuffle
if !order2!==!order1! set /a order2=(!order2!+1)%%4 & goto shuffle
if !order3!==!order0! set /a order3=(!order3!+1)%%4 & goto shuffle
if !order3!==!order1! set /a order3=(!order3!+1)%%4 & goto shuffle
if !order3!==!order2! set /a order3=(!order3!+1)%%4 & goto shuffle

set OptionsArr0=!Options%order0%!
set OptionsArr1=!Options%order1%!
set OptionsArr2=!Options%order2%!
set OptionsArr3=!Options%order3%!

:: ===== Affichage =====
call :separator " " "only"
echo|set /p="%SRESET% %SBOLD%%NFCCYAN%!Emoji! Question %QIndex%: !Emoji!%SRESET%"
echo.
echo.
echo|set /p="%SRESET% %NFCCYAN%!QuestionDesc!%SRESET% "
echo.
echo.
echo|set /p="%SRESET% A) !OptionsArr0! "
echo.
echo|set /p="%SRESET% B) !OptionsArr1! "
echo.
echo|set /p="%SRESET% C) !OptionsArr2! "
echo.
echo|set /p="%SRESET% D) !OptionsArr3! "
echo.
echo.

:: Lecture réponse
echo|set /p="%SRESET% Your choice (A/B/C/D) [30s to answer]: "
choice /c ABCD /t 30 /d A /n
:: Convertit %errorlevel% en lettre
set temp=%errorlevel%
set "ans="
set idx=0
if %temp%==1 set "ans=A"
if %temp%==2 set "ans=B"
if %temp%==3 set "ans=C"
if %temp%==4 set "ans=D"
if /i "!ans!"=="A" set idx=0
if /i "!ans!"=="B" set idx=1
if /i "!ans!"=="C" set idx=2
if /i "!ans!"=="D" set idx=3

:: Vérification de la réponse
call set "selected=%%OptionsArr!idx!%%"
if "!selected!"=="!QuestionCmd!" (
    echo %SFCGREEN%Correct! ✅%SRESET%
    set /a score+=1
) else (
    echo %NFCRED%Wrong ❌ Correct answer: !QuestionCmd!%SRESET%
)

echo.
echo Loading next question...
timeout /t 1 >nul
exit /b

:: ===============================
:: 🔧 Algo + menu personnalisé
:: ===============================
:USB
if /I "%valeur%"=="Computer Wash USB Protection" (
	cd /D "%~dp0".
	cls
	call :Print Ligne_Menuheader 0
	call :separator "Computer Wash USB Protection" "only"
	call :Print Ligne_MenuUSBA 0
	start diskmgmt
	echo list disk > "%CD%\Computer_Wash_DiskPart.txt"
	echo list volume >> "%CD%\Computer_Wash_DiskPart.txt"
	echo exit >> "%CD%\Computer_Wash_DiskPart.txt"
	diskpart /s Computer_Wash_DiskPart.txt > LOG.txt"
	call :separator "Computer Wash USB Protection" "only"
	type LOG.txt
	echo.
	set /p choixUSB= Please type the command to execute : 
	echo !choixUSB! > "%CD%\Computer_Wash_DiskPart.txt"
	call :separator "Computer Wash USB Protection" "only"
	call :Print Ligne_MenuUSBB 0
	echo.
	set /p choixUSB= %SRESET% Please type the command to execute 1 - 2 - 3 - 4 : %SRESET%
	if /I "!choixUSB!"=="1" (
		echo attributes volume set readonly >> "%CD%\Computer_Wash_DiskPart.txt"
		goto:ProgramUSB
	)
	if /I "!choixUSB!"=="2" (
		echo attributes volume clear readonly >> "%CD%\Computer_Wash_DiskPart.txt"
		goto:ProgramUSB
	)
	if /I "!choixUSB!"=="3" (
		echo attributes disk set readonly >> "%CD%\Computer_Wash_DiskPart.txt"
		goto:ProgramUSB
	)
	if /I "!choixUSB!"=="4" (
		echo attributes disk clear readonly >> "%CD%\Computer_Wash_DiskPart.txt"
		goto:ProgramUSB
	)
	powershell -command "Start-Sleep -Milliseconds 500" >nul
	Call :Erreur
	timeout /t 60 /nobreak
	exit
	:ProgramUSB
	call :separator "Computer Wash USB Protection" "only"
	echo exit >> "%CD%\Computer_Wash_DiskPart.txt"
	diskpart /s "%CD%\Computer_Wash_DiskPart.txt"
	echo.
	echo %NFCGREEN% ----------- %SFCGREEN%END %NFCGREEN%----------
	echo.
	call :Print Ligne_Menufoot_head 0
	del Computer_Wash_DiskPart.txt
	del LOG.txt
	goto :END_Menu
)
goto :eof

:Exit
set /a nb+=1
if /I "%valeur%"=="exit" (
set choix=C
if /I "%exit%"=="0" (
set exit=1
) else (
set exit=0
)
)
set "C%nb%=Exit "
if /I "%exit%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
	if "%Start?%"=="2" (
		goto :ALL
	)
)
if /I "%exit%"=="1" (
    set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
	if "%Start?%"=="2" (
		call :separator exit
		goto :exitlog
	)
)
goto :eof

:shutdown
set /a nb+=1
if /I "%valeur%"=="shutdownrr" (
set choix=C
if /I "%shutdownrr%"=="0" (
set shutdown=0
set shutdownrr=1
set shutdownro=0
) else (
set shutdownrr=0
)
)
set /a nb+=1
if /I "%valeur%"=="shutdownro" (
set choix=C
if /I "%shutdownro%"=="0" (
set shutdown=0
set shutdownrr=0
set shutdownro=1
) else (
set shutdownro=0
)
)
if /I "%valeur%"=="Restart Windows in Recovery Mode" (
set choix=C
if /I "%shutdownro%"=="0" (
set shutdownro=1
) else (
set shutdownro=0
)
)
set /a nb+=1
if /I "%valeur%"=="shutdown" (
set choix=C
if /I "%shutdown%"=="0" (
set shutdown=1
set shutdownrr=0
set shutdownro=0
) else (
set shutdown=0
)
)
set "C%nb%=Shutdown /s "
if /I "%shutdown%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%shutdown%"=="1" (
    set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
	if "%Start?%"=="2" (
		call :separator "Shutdown /s"
		Shutdown /s
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
)
set /a nb-=1
set "C%nb%=Shutdown /r /o "
if /I "%shutdownro%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%shutdownro%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Shutdown /r /o"
		shutdown /r /o
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
set /a nb-=1
set "C%nb%=Shutdown /r "
if /I "%shutdownrr%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%shutdownrr%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Shutdown /r"
		Shutdown /r
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
set /a nb+=1
set /a nb+=1
goto :eof

:Pause
set /a nb+=1
if /I "%valeur%"=="Pause" (
set choix=C
if /I "%pause%"=="0" (
set pause=1
) else (
set pause=0
)
)
set "C%nb%=Pause "
if /I "%pause%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%pause%"=="1" (
    set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
	if "%Start?%"=="2" (
		call :separator "The script has finished executing all the requested commands and will close as soon as you end the pause."
		pause
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
)
goto :eof

:Create_Restore_Point
set Temploop=0
set /a nb+=1
:Retry_Create_Restore_Point
if /I "%valeur%"=="Wmic.exe" (
set choix=C
if /I "%Security%"=="0" (
set Security=1
) else (
set Security=0
)
)
set "C%nb%=Create Restore Point "
if /I "%Security%"=="0" (
	set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%Security%"=="1" (
    if "%Start?%"=="2" (
		call :separator "Allows the creation of restore points on the drive if they have not already been created."
		powershell -Command "if (-not (Get-ComputerRestorePoint -ErrorAction SilentlyContinue)) { Enable-ComputerRestore -Drive 'C:\' }"
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		call :separator "Silently start the System Restore service"
		net start srservice >nul 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		set "DATETIME=%DATE:/=-%_%TIME::=-%"
		set "DATETIME=%DATETIME: =0%"
		call set "POINTNAME=AutoRestore_%%DATETIME%%"
		call set "POINTNAME=%%POINTNAME:~0,40%%"
		call :separator "Create Restore Point"
		call powershell -Command "Checkpoint-Computer -Description '%%POINTNAME%%' -RestorePointType 'MODIFY_SETTINGS'"
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry Create_Restore_Point )
	)
	    set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:System_info
set /a nb+=1
if /I "%valeur%"=="System info" (
	set choix=C
	if /I "%wmicsoftwarelicensingservice%"=="0" (
		set wmicsoftwarelicensingservice=1
	) else (
		set wmicsoftwarelicensingservice=0
	)
)
set "C%nb%=Windows KEY "
if /I "%wmicsoftwarelicensingservice%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%wmicsoftwarelicensingservice%"=="1" (
	if "%Start?%"=="2" (
		call :separator "System info"
   		systeminfo | find /i "Microsoft windows"
   		echo|set /p="Windows KEY :                               "
   		powershell -Command "(Get-WmiObject -Query 'Select * from SoftwareLicensingService').OA3xOriginalProductKey"
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:Chkdsk
set /a nb+=1
if /I "%valeur%"=="Chkdsk" (
set choix=C
if /I "%chkdsk%"=="0" (
set chkdsk=1
) else (
set chkdsk=0
)
)
set "C%nb%=Chkdsk C: /F /R /I "
if /I "%chkdsk%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%chkdsk%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Chkdsk C: /F /R /I"
		echo O^R | chkdsk c: /F /R /I
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:Defragmentation
set Temploop=0
set /a nb+=1
:Retry_Defragmentation
if /I "%valeur%"=="Defragmentation" (
set choix=C
if /I "%defrag%"=="0" (
set defrag=1
) else (
set defrag=0
)
)
set "C%nb%=Defrag C: /U /V "
if /I "%defrag%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%defrag%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Defrag C: /U /V"
		Defrag C: /U /V
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry Defragmentation )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:cleanmgr
set /a nb+=1
if /I "%valeur%"=="cleanmgr" (
set choix=C
if /I "%cleanmgr%"=="0" (
set cleanmgr=1
) else (
set cleanmgr=0
)
)
set "C%nb%=Cleanmgr /sagerun:65535 "
if /I "%cleanmgr%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%cleanmgr%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Cleanmgr /sagerun:65535"
		Cleanmgr /sagerun:65535
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:DISM
set Temploop=0
set /a nb+=1
:Retry_DISM
if /I "%valeur%"=="DISM" (
set choix=C
if /I "%DISM%"=="0" (
set DISM=1
) else (
set DISM=0
)
)
set "C%nb%=DISM.exe /Online /Cleanup-image /Restorehealth "
if /I "%DISM%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%DISM%"=="1" (
	if "%Start?%"=="2" (
		call :separator "DISM.exe /Online /Cleanup-image /Restorehealth"
		DISM.exe /Online /Cleanup-image /Restorehealth
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry DISM )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:Sfcscannow
set Temploop=0
set /a nb+=1
:Retry_Sfcscannow
if /I "%valeur%"=="sfc" (
set choix=C
if /I "%sfc%"=="0" (
set sfc=1
) else (
set sfc=0
)
)
set "C%nb%=Sfc /scannow "
if /I "%sfc%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%sfc%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Sfc /scannow"
		Sfc /scannow
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry Sfcscannow )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:findstr
set /a nb+=1
if /I "%valeur%"=="findstr" (
set choix=C
if /I "%findstr%"=="0" (
set findstr=1
) else (
set findstr=0
)
)
set "C%nb%=Log SFC  "
if /I "%findstr%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%findstr%"=="1" (
	if "%Start?%"=="2" (
		Call :Spinner_Start
		call :separator "Findstr /c:""[SR]"" %windir%\Logs\CBS\CBS.log In Progress..."
		findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log >"Compuer Wash Log sfc.txt"
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:Mrt
set /a nb+=1
if /I "%valeur%"=="Mrt" (
set choix=C
if /I "%Mrt%"=="0" (
set Mrt=1
) else (
set Mrt=0
)
)
set "C%nb%=Mrt.exe (This may take several hours) "
if /I "%Mrt%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%Mrt%"=="1" (
	if "%Start?%"=="2" (
		Call :Spinner_Start
		call :separator "Mrt.exe This may take several hours"
		Mrt.exe /F:Y /Q
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:SignatureUpdate
set Temploop=0
set /a nb+=1
:Retry_SignatureUpdate
if /I "%valeur%"=="SignatureUpdate" (
set choix=C
if /I "%SignatureUpdate%"=="0" (
set SignatureUpdate=1
) else (
set SignatureUpdate=0
)
)
set "C%nb%=MpCmdRun.exe -SignatureUpdate "
if /I "%SignatureUpdate%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%SignatureUpdate%"=="1" (
	if "%Start?%"=="2" (
		call :separator "MpCmdRun.exe -SignatureUpdate"
		"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry SignatureUpdate )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:MpCmdRunBootSectorScan
set Temploop=0
set /a nb+=1
:Retry_:MpCmdRunBootSectorScan
if /I "%valeur%"=="MpCmdRunBootSectorScan" (
set choix=C
if /I "%MpCmdRunBootSectorScan%"=="0" (
set MpCmdRunBootSectorScan=1
) else (
set MpCmdRunBootSectorScan=0
)
)
set "C%nb%=MpCmdRun.exe -Scan -ScanType -BootSectorScan "
if /I "%MpCmdRunBootSectorScan%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%MpCmdRunBootSectorScan%"=="1" (
	if "%Start?%"=="2" (
		call :separator "MpCmdRun.exe -Scan -ScanType -BootSectorScan"
		Call :Spinner_Start
		"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType -BootSectorScan
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:MpCmdRunScanType
set /a nb+=1
if /I "%valeur%"=="MpCmdRunScanType" (
set choix=C
if /I "%MpCmdRunScanType%"=="0" (
set MpCmdRunScanType=1
) else (
set MpCmdRunScanType=0
)
)
set "C%nb%=MpCmdRun.exe -Scan -ScanType 2 "
if /I "%MpCmdRunScanType%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%MpCmdRunScanType%"=="1" (
	if "%Start?%"=="2" (
		call :separator "MpCmdRun.exe -Scan -ScanType 2"
		Call :Spinner_Start
		"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 2
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:pnpunattendauditsystem
set /a nb+=1
if /I "%valeur%"=="pnpunattendauditsystem" (
set choix=C
if /I "%pnpunattend%"=="0" (
set pnpunattend=1
) else (
set pnpunattend=0
)
)
set "C%nb%=Pnpunattend auditsystem /s /l "
if /I "%pnpunattend%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%pnpunattend%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Pnpunattend auditsystem /s /l"
		pnpunattend auditsystem /s /l
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:mode
set /a nb+=1
if /I "%valeur%"=="mode" (
set choix=C
if /I "%mode%"=="0" (
set mode=1
) else (
set mode=0
)
)
set "C%nb%=Mode "
if /I "%mode%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%mode%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Mode"
		mode
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:mdsched
set /a nb+=1
if /I "%valeur%"=="mdsched" (
set choix=C
if /I "%mdsched%"=="0" (
set mdsched=1
) else (
set mdsched=0
)
)
set "C%nb%=Mdsched "
if /I "%mdsched%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%mdsched%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Mdsched"
		mdsched
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:bcdbootsfall
set Temploop=0
set /a nb+=1
:Retry_bcdbootsfall
if /I "%valeur%"=="bcdboot" (
set choix=C
if /I "%bcdboot%"=="0" (
set bcdboot=1
) else (
set bcdboot=0
)
)
set "C%nb%=bcdboot C:\Windows /s C: /f ALL "
if /I "%bcdboot%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%bcdboot%"=="1" (
	if "%Start?%"=="2" (
		call :separator "bcdboot C:\Windows /s C: /f ALL"
		bcdboot C:\Windows /s C: /f ALL
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry bcdbootsfall )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:wsreset
set /a nb+=1
if /I "%valeur%"=="wsreset" (
set choix=C
if /I "%wsreset%"=="0" (
set wsreset=1
) else (
set wsreset=0
)
)
set "C%nb%=Wsreset "
if /I "%wsreset%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%wsreset%"=="1" (
	if "%Start?%"=="2" (
		Call :Spinner_Start
		call :separator "Wsreset"
		wsreset
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:rstrui
set /a nb+=1
if /I "%valeur%"=="rstrui" (
set choix=C
if /I "%rstrui%"=="0" (
set rstrui=1
) else (
set rstrui=0
)
)
set "C%nb%=Rstrui.exe "
if /I "%rstrui%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%rstrui%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Rstrui.exe"
		rstrui.exe
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:AllUpdateAPP
set Temploop=0
set /a nb+=1
:Retry_AllUpdateAPP
if /I "%valeur%"=="AllUpdateAPP" (
set choix=C
if /I "%ALL%"=="0" (
set ALL=1
) else (
set ALL=0
)
)
set "C%nb%=winget upgrade --all --silent --accept-package-agreements --accept-source-agreements "

if /I "%ALL%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%ALL%"=="1" (
	if "%Start?%"=="2" (
	call :separator "All Update APP"
	winget upgrade --all --silent --accept-package-agreements --accept-source-agreements
	set temperror=!ERRORLEVEL!
    Call :LOGERRORLEVEL !temperror!
	if !temperror! GEQ 1 ( Call :Retry AllUpdateAPP )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:wingetgooglechrome
set /a nb+=1
if /I "%valeur%"=="wingetgooglechrome" (
set choix=C
if /I "%chrome%"=="0" (
set chrome=1
) else (
set chrome=0
)
)
set "C%nb%=Winget install google.chrome "
if /I "%chrome%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%chrome%"=="1" (
	if "%Start?%"=="2" (
		call :separator "google.chrome"
		winget install "Google.Chrome" --silent --accept-package-agreements --accept-source-agreements
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:wingetMozillaFirefox
set /a nb+=1
if /I "%valeur%"=="wingetMozillaFirefox" (
set choix=C
if /I "%Firefox%"=="0" (
set Firefox=1
) else (
set Firefox=0
)
)
set "C%nb%=Winget install Mozilla.Firefox "
if /I "%Firefox%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%Firefox%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Install Mozilla.Firefox"
		winget install "Mozilla.Firefox" --silent --accept-package-agreements --accept-source-agreements
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:wingetVideoLANVLC
set /a nb+=1
if /I "%valeur%"=="wingetVideoLANVLC" (
set choix=C
if /I "%VLC%"=="0" (
set VLC=1
) else (
set VLC=0
)
)
set "C%nb%=Winget install VideoLAN.VLC "
if /I "%VLC%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%VLC%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Install VideoLAN.VLC"
		winget install "VideoLAN.VLC" --silent --accept-package-agreements --accept-source-agreements
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:wingetAcrobat
set /a nb+=1
if /I "%valeur%"=="wingetAcrobat" (
set choix=C
if /I "%Acrobat%"=="0" (
set Acrobat=1
) else (
set Acrobat=0
)
)
set "C%nb%=Winget install Adobe.Acrobat.Reader.64-bit "
if /I "%Acrobat%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%Acrobat%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Install Adobe.Acrobat.Reader.64-bit"
		winget install "Adobe.Acrobat.Reader.64-bit" --silent --accept-package-agreements --accept-source-agreements
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
		set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:winget7zip
set /a nb+=1
if /I "%valeur%"=="winget7zip" (
set choix=C
if /I "%zip%"=="0" (
set zip=1
) else (
set zip=0
)
)
set "C%nb%=Winget install 7zip.7zip "
if /I "%zip%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%zip%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Install 7zip.7zip"
		winget install "7zip.7zip" --silent --accept-package-agreements --accept-source-agreements
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:KeePass
set /a nb+=1
if /I "%valeur%"=="KeePass" (
set choix=C
if /I "%KeePass%"=="0" (
set KeePass=1
) else (
set KeePass=0
)
)
set "C%nb%=Winget install DominikReichl.KeePass "
if /I "%KeePass%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%KeePass%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Install DominikReichl.KeePass"
		winget install "DominikReichl.KeePass" --silent --accept-package-agreements --accept-source-agreements
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:wuauservStop
set Temploop=0
set /a nb+=1
:Retry_wuauservStop
if /I "%valeur%"=="wuauservStop" (
set choix=C
if /I "%wuauservStop%"=="0" (
set wuauservStop=1
) else (
set wuauservStop=0
)
)
set "C%nb%=net stop wuauservStop "
if /I "%wuauservStop%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%wuauservStop%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Stopping services... net stop wuauservStop"
		net stop wuauserv 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry wuauservStop )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:cryptSvcStop
set Temploop=0
set /a nb+=1
:Retry_cryptSvcStop
if /I "%valeur%"=="cryptSvcStop" (
set choix=C
if /I "%cryptSvcStop%"=="0" (
set cryptSvcStop=1
) else (
set cryptSvcStop=0
)
)
set "C%nb%=net stop cryptSvc "
if /I "%cryptSvcStop%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%cryptSvcStop%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Stopping services... net stop cryptSvc"
		net stop cryptSvc 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry cryptSvcStop )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:bitsStop
set Temploop=0
set /a nb+=1
:Retry_bitsStop
if /I "%valeur%"=="bitsStop" (
set choix=C
if /I "%bitsStop%"=="0" (
set bitsStop=1
) else (
set bitsStop=0
)
)
set "C%nb%=net stop bits "
if /I "%bitsStop%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%bitsStop%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Stopping services... net stop bits"
		net stop bits 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry bitsStop )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:msiserverStop
set Temploop=0
set /a nb+=1
:Retry_msiserverStop
if /I "%valeur%"=="net stop msiserver" (
set choix=C
if /I "%msiserverStop%"=="0" (
set msiserverStop=1
) else (
set msiserverStop=0
)
)
set "C%nb%=net stop msiserver "
if /I "%msiserverStop%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%msiserverStop%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Stopping services... net stop msiserver"
		net stop msiserver 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry msiserverStop )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:del
set /a nb+=1
if /I "%valeur%"=="del" (
set choix=C
if /I "%del%"=="0" (
set del=1
) else (
set del=0
)
)
set "C%nb%=Del /S /F /Q %temp% "
if /I "%del%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%del%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Del /S /F /Q %temp%"
		del /S /F /Q %temp%
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:del2
set /a nb+=1
if /I "%valeur%"=="del2" (
set choix=C
if /I "%del2%"=="0" (
set del2=1
) else (
set del2=0
)
)
set "C%nb%=Del /S /F /Q %Windir%\Temp "
if /I "%del2%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%del2%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Del /S /F /Q %Windir%\Temp"
		del /S /F /Q %Windir%\Temp
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:SoftwareDistribution
set Temploop=0
set /a nb+=1
:Retry_SoftwareDistribution
if /I "%valeur%"=="SoftwareDistribution" (
set choix=C
if /I "%SoftwareDistribution%"=="0" (
set SoftwareDistribution=1
) else (
set SoftwareDistribution=0
)
)
set "C%nb%=rd /s /q %windir%\SoftwareDistribution "
if /I "%SoftwareDistribution%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%SoftwareDistribution%"=="1" (
	if "%Start?%"=="2" (
		call :separator "rd /s /q %windir%\SoftwareDistribution"
		rd /s /q %windir%\SoftwareDistribution
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry SoftwareDistribution )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:catroot2
set Temploop=0
set /a nb+=1
:Retry_catroot2
if /I "%valeur%"=="catroot2" (
set choix=C
if /I "%catroot2%"=="0" (
set catroot2=1
) else (
set catroot2=0
)
)
set "C%nb%=rd /s /q %windir%\System32\catroot2 "
if /I "%catroot2%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%catroot2%"=="1" (
	if "%Start?%"=="2" (
		call :separator "rd /s /q %windir%\System32\catroot2"
		rd /s /q %windir%\System32\catroot2
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry catroot2 )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:winsockreset
set Temploop=0
set /a nb+=1
:Retry_winsockreset
if /I "%valeur%"=="winsockreset" (
set choix=C
if /I "%winsockreset%"=="0" (
set winsockreset=1
) else (
set winsockreset=0
)
)
set "C%nb%=Netsh winsock reset "
if /I "%winsockreset%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%winsockreset%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Netsh winsock reset"
		netsh winsock reset
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry winsockreset )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:interfaceipreset
set Temploop=0
set /a nb+=1
:Retry_interfaceipreset
if /I "%valeur%"=="interfaceipreset" (
set choix=C
if /I "%interfaceipreset%"=="0" (
set interfaceipreset=1
) else (
set interfaceipreset=0
)
)
set "C%nb%=Netsh interface ip reset "
if /I "%interfaceipreset%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%interfaceipreset%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Netsh interface ip reset"
		netsh interface ip reset
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry interfaceipreset )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:advfirewallreset
set Temploop=0
set /a nb+=1
:Retry_advfirewallreset
if /I "%valeur%"=="advfirewallreset" (
set choix=C
if /I "%advfirewallreset%"=="0" (
set advfirewallreset=1
) else (
set advfirewallreset=0
)
)
set "C%nb%=Netsh advfirewall reset "
if /I "%advfirewallreset%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%advfirewallreset%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Netsh advfirewall reset"
		netsh advfirewall reset
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry advfirewallreset )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:ipconfigrelease
set Temploop=0
set /a nb+=1
:Retry_ipconfigrelease
if /I "%valeur%"=="ipconfigrelease" (
set choix=C
if /I "%ipconfigrelease%"=="0" (
set ipconfigrelease=1
) else (
set ipconfigrelease=0
)
)
set "C%nb%=Ipconfig /release "
if /I "%ipconfigrelease%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%ipconfigrelease%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Ipconfig /release"
		ipconfig /release
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry ipconfigrelease )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:ipconfigflushdns
set Temploop=0
set /a nb+=1
:Retry_ipconfigflushdns
if /I "%valeur%"=="ipconfigflushdns" (
set choix=C
if /I "%ipconfigflushdns%"=="0" (
set ipconfigflushdns=1
) else (
set ipconfigflushdns=0
)
)
set "C%nb%=Ipconfig /flushdns "
if /I "%ipconfigflushdns%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%ipconfigflushdns%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Ipconfig /flushdns"
		ipconfig /flushdns
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry ipconfigflushdns )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:iwinhttp
set Temploop=0
set /a nb+=1
:Retry_iwinhttp
if /I "%valeur%"=="winhttp" (
set choix=C
if /I "%winhttp%"=="0" (
set winhttp=1
) else (
set winhttp=0
)
)
set "C%nb%=netsh winhttp reset proxy "
if /I "%winhttp%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%winhttp%"=="1" (
	if "%Start?%"=="2" (
		call :separator "netsh winhttp reset proxy"
		netsh winhttp reset proxy
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry iwinhttp )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:bitsadminresetallusers
set Temploop=0
set /a nb+=1
:Retry_bitsadminresetallusers
if /I "%valeur%"=="bitsadmin" (
set choix=C
if /I "%bitsadmin%"=="0" (
set bitsadmin=1
) else (
set bitsadmin=0
)
)
set "C%nb%=bitsadmin /reset /allusers "
if /I "%bitsadmin%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%bitsadmin%"=="1" (
	if "%Start?%"=="2" (
		call :separator "bitsadmin /reset /allusers 2>&1"
		bitsadmin /reset /allusers 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry bitsadminresetallusers )
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:DLLWindowsUp
set /a nb+=1
if /I "%valeur%"=="DLLWindowsUp" (
set choix=C
if /I "%DLLWindowsUp%"=="0" (
set DLLWindowsUp=1
) else (
set DLLWindowsUp=0
)
)
set "C%nb%=Re-registering Windows Update DLLs... "
if /I "%DLLWindowsUp%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%DLLWindowsUp%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Re-registering Windows Update DLLs..."
		call :ReRegister_WindowsUpdate_DLLs
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:ReRegister_WindowsUpdate_DLLs
for %%i in (
    atl.dll urlmon.dll mshtml.dll shdocvw.dll browseui.dll jscript.dll vbscript.dll scrrun.dll
    msxml.dll msxml3.dll msxml6.dll actxprxy.dll softpub.dll wintrust.dll dssenh.dll rsaenh.dll
    gpkcsp.dll sccbase.dll slbcsp.dll cryptdlg.dll oleaut32.dll ole32.dll shell32.dll initpki.dll
    wuapi.dll wuaueng.dll wuaueng1.dll wucltui.dll wups.dll wups2.dll wuweb.dll qmgr.dll
    qmgrprxy.dll wucltux.dll muweb.dll wuwebv.dll
) do regsvr32.exe /s %%i
set temperror=!ERRORLEVEL!
Call :LOGERRORLEVEL !temperror!
if !temperror! GEQ 1 ( Call :Retry DLLWindowsUp )
echo|set /p="✅ Windows Update has been completely reset !"
echo.
goto :eof

:wuauservStart
set /a nb+=1
if /I "%valeur%"=="wuauservStart" (
set choix=C
if /I "%wuauservStart%"=="0" (
set wuauservStart=1
) else (
set wuauservStart=0
)
)
set "C%nb%=net Start wuauservStart "
if /I "%wuauservStart%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%wuauservStart%"=="1" (
	if "%Start?%"=="2" (
		call :separator "net Start wuauservStart"
		net start wuauserv 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:cryptSvcStart
set /a nb+=1
if /I "%valeur%"=="cryptSvcStart" (
set choix=C
if /I "%cryptSvcStart%"=="0" (
set cryptSvcStart=1
) else (
set cryptSvcStart=0
)
)
set "C%nb%=net Start cryptSvc "
if /I "%cryptSvcStart%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%cryptSvcStart%"=="1" (
	if "%Start?%"=="2" (
		call :separator "net Start cryptSvc"
		net Start cryptSvc 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:bitsStart
set /a nb+=1
if /I "%valeur%"=="bitsStart" (
set choix=C
if /I "%bitsStart%"=="0" (
set bitsStart=1
) else (
set bitsStart=0
)
)
set "C%nb%=net Start bits "
if /I "%bitsStart%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%bitsStart%"=="1" (
	if "%Start?%"=="2" (
		call :separator "net Start bits"
		net Start bits 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:msiserverStart
set /a nb+=1
if /I "%valeur%"=="net Start msiserver" (
set choix=C
if /I "%msiserverStart%"=="0" (
set msiserverStart=1
) else (
set msiserverStart=0
)
)
set "C%nb%=net Start msiserver "
if /I "%msiserverStart%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%msiserverStart%"=="1" (
	if "%Start?%"=="2" (
		call :separator "net Start msiserver"
		net Start msiserver >nul 2>&1
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:StartScan
set Temploop=0
set /a nb+=1
:Retry_StartScan
if /I "%valeur%"=="UsoClient StartScan" (
set choix=C
if /I "%StartScan%"=="0" (
set StartScan=1
) else (
set StartScan=0
)
)
set "C%nb%=UsoClient StartScan "
if /I "%StartScan%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%StartScan%"=="1" (
	if "%Start?%"=="2" (
		call :separator "UsoClient StartScan"
		Call :Spinner_Start
		UsoClient StartScan
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry StartScan )
		Call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:StartDownload
set Temploop=0
set /a nb+=1
:Retry_StartDownload
if /I "%valeur%"=="UsoClient StartDownload" (
set choix=C
if /I "%StartDownload%"=="0" (
set StartDownload=1
) else (
set StartDownload=0
)
)
set "C%nb%=UsoClient StartDownload "
if /I "%StartDownload%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%StartDownload%"=="1" (
	if "%Start?%"=="2" (
		call :separator "UsoClient StartDownload"
		Call :Spinner_Start
		UsoClient StartDownload
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry StartDownload )
		Call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:StartInstall
set Temploop=0
set /a nb+=1
:Retry_StartInstall
if /I "%valeur%"=="UsoClient StartInstall" (
set choix=C
if /I "%StartInstall%"=="0" (
set StartInstall=1
) else (
set StartInstall=0
)
)
set "C%nb%=UsoClient StartInstall "
if /I "%StartInstall%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%StartInstall%"=="1" (
	if "%Start?%"=="2" (
		Call :Spinner_Start
		call :separator "UsoClient StartInstall"
		UsoClient StartInstall
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		if !temperror! GEQ 1 ( Call :Retry StartInstall )
		Call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:RestartDevice
set /a nb+=1
if /I "%valeur%"=="UsoClient RestartDevice" (
set choix=C
if /I "%RestartDevice%"=="0" (
set RestartDevice=1
) else (
set RestartDevice=0
)
)
set "C%nb%=UsoClient RestartDevice "
if /I "%RestartDevice%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%RestartDevice%"=="1" (
	if "%Start?%"=="2" (
		call :separator "UsoClient RestartDevice"
		Call :Spinner_Start
		UsoClient RestartDevice
		set temperror=!ERRORLEVEL!
        Call :LOGERRORLEVEL !temperror!
		Call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
goto :eof

:Log
cd /D "%~dp0".
if /I "%LOG%"=="1" (
	echo " |----------------| Start :                             | " >> "%CD%\Computer Wash Log.txt"
	echo " |- %TIME% --| %1" >> "%CD%\Computer Wash Log.txt">> "%CD%\Computer Wash Log.txt"
	echo " |                |                                     | " >> "%CD%\Computer Wash Log.txt"
)
goto :eof

:LOGERRORLEVEL
if /I "%LOG%"=="1" (
	echo " |                | Error level output :                | " >> "%CD%\Computer Wash Log.txt"
	echo " |- %TIME% --| %1" >> "%CD%\Computer Wash Log.txt">> "%CD%\Computer Wash Log.txt"
	echo " |----------------|-------------------------------------| " >> "%CD%\Computer Wash Log.txt"
)
goto :eof

:LOGERRORLEVEL
if /I "%LOG%"=="1" (
	echo " |                | Error level output :                | " >> "%CD%\Computer Wash Log.txt"
	echo " |- %TIME% --| %1" >> "%CD%\Computer Wash Log.txt">> "%CD%\Computer Wash Log.txt"
	echo " |----------------|-------------------------------------| " >> "%CD%\Computer Wash Log.txt"
)
goto :eof

:Retry
call :separator "Fail_Retry"
set /a Temploop+=1
set "Retry=Retry_%~1"
if !Temploop! LEQ 1 (
    if !temperror! GEQ 1 (
        echo [Retry] Relance !Retry! (Temploop=!Temploop!, ErrorLevel=!temperror!)
        call :!Retry!
    )
)
goto :eof

:exitlog
if /I "%LOG%"=="1" (
	echo " |- %TIME% --| Exit                                | " >> "%CD%\Computer Wash Log.txt"
	echo " \______________________________________________________/ " >> "%CD%\Computer Wash Log.txt"
)
call :Spinner_OFF
exit