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

:: |                                                      |
set V=V.2025.08.24.21.16
:: |______________________________________________________|
:: |                                                      |
:: | Update  : PastequeOsaure V 2025.08.24.21.16          |
:: |                                                      |
:: |    Participation :                                   |
:: |    |                                                 |
:: |    | AAA3A      : cd /D "%~dp0". --------   07/07/21 |
:: |    | ChatGpt    : Quiz Secret -----------   24/08/25 |
:: |______________________________________________________|
:: |                                                      |
:: | Copy computerwash to system32 0 = OFF 1 = ON         |
:: |                                                      |
set copy=0
:: |______________________________________________________|
:: |                                                      |
:: | System info 0 = OFF 1 = ON                           |
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

:: - Computerwash Start - Admin mode ? -
title Computer wash ERR ADMIN
cd /D "%~dp0".
call :Color
goto :full_mode_admin

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

:full_mode_admin
If _%1_==_payload_  goto :copy
:Admin
 set vbs=%temp%\getadmin.vbs
 echo Set UAC = CreateObject^("Shell.Application"^)>> "%vbs%"
 echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
 "%temp%\getadmin.vbs"
 del "%temp%\getadmin.vbs"
 goto :eof
 
 :: - copy to system 32 -
:copy
 title Computer wash Ultimate %V%
 verify on
 if /I "%copy%"=="1" (
	xcopy "ComputerWash.cmd" "%windir%\system32\"  /s /h /y
)
goto :Var

:Var
 set choix=0
 set Start?=0
  
 set verify=1
 set Security=1
 set Shutdown=0

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

::::::::::::::::::::::::::::::::::::::::::::::::::::
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

::-------------------------------------------------------------------------------

Set /A RAND=(%RANDOM%*38/32768)

set print=0
set Ligne=0
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
:: ne dois jamais sortir char_sp38

set ARISP=Ligne_MenuARISP
set "ARISP0= "
set "ARISP1=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP2=%%SRESET%%                         ⚠️ SOFTWARE DISCLAIMER ⚠️"
set "ARISP3=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP4=%%SRESET%% "
set "ARISP5=%%SRESET%% IF YOU HAVE PAID FOR THIS SOFTWARE, YOU HAVE BEEN SCAMMED!"
set "ARISP6=%%SRESET%% This script is completely FREE."
set "ARISP7= "
set "ARISP8=%%SRESET%% The software is provided ""AS IS"", without any warranty."
set "ARISP9=%%SRESET%% The authors or copyright holders shall NOT be liable for any damages, losses, or claims."
set "ARISP10=%%SRESET%% 👉 Use this script AT YOUR OWN RISK."
set "ARISP11= "
set "ARISP12=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP13=%%SRESET%%                             ⚠️ DISCLAIMER ⚠️"
set "ARISP14=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP15= "
set "ARISP16=%%SRESET%% - Any unauthorized modification of this script is done at your own risk."
set "ARISP17=%%SRESET%% - You are allowed to edit parameters in the main block at the beginning of the file, EXCEPT:"
set "ARISP18=%%SRESET%%   - the version number"
set "ARISP19=%%SRESET%%   - the creation date"
set "ARISP20=%%SRESET%%   - the creator's nickname"
set "ARISP21= "
set "ARISP22=%%SRESET%% 👉 If you update this script, please record your changes in the **Update** section."
set "ARISP23= "
set "ARISP24=%%SRESET%% - This script does NOT guarantee troubleshooting."
set "ARISP25=%%SRESET%% It is designed to simplify and automate commands in advance, saving time."
set "ARISP26= "
set "ARISP27=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP28=%%SRESET%%                         ⚙️ USAGE WITH ARGUMENTS"
set "ARISP29=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP30= "
set "ARISP31=%%SRESET%% - Example.cmd A1 S1       → Pre-select options in Customizable without running."
set "ARISP32=%%SRESET%% - Example.cmd A1 S1 C56   → Pre-select options and START the program."
set "ARISP33=%%SRESET%% ⚠️ Warning: C56 will execute the selected actions. Make sure you reviewed them first!"
set "ARISP34= "
set "ARISP35=%%SRESET%% ℹ️ Note: Option D (Colorblind Mode) is NOT compatible in argument mode."
set "ARISP36=%%SRESET%%   You can enable it by modifying line 43 of the script file (change 1 → 0)."
set "ARISP37= "
set "ARISP38=%%SRESET%% ⚙️ To disable the startup warning message:"
set "ARISP39=%%SRESET%%   Modify line 2 of the script file (change 1 → 0)."
set "ARISP40=%%SRESET%% ⚡ By doing this, you acknowledge that you have read the disclaimer above."
set "ARISP41= "
set "ARISP42=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP43= "
set "ARISP44=%%SRESET%%%%SFCBLUE%% https:^/^/github.com^/Pastequeosaure^/ComputerWash.cmd^/blob^/main^/ComputerWash.cmd"
set "ARISP45=%%SRESET%%%%SFCBLUE%% https:^/^/computerwash.wixsite.com^/computer-wash%%SRESET%%"
set "ARISP46= "
set "ARISP47=%%SFCRED%%   - %%SRESET%%%%SUNDERLINE%%Press CTRL+C to EXIT%%SRESET%%"
set "ARISP48=%%SFCGREEN%%   - %%SRESET%%%%SUNDERLINE%%Press ENTER to continue%%SRESET%%"
set "ARISP49= "
set "ARISP50=%%SFCYELLOW%% -----------------------------------------------------------------------%%SRESET%%"
set "ARISP51= "

:: - Any reproduction is strictly prohibited -
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

:: - Preparateur de variable -
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

::C
set nb=0
:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
		call :separator "Create Restore Point"
		powershell -Command "if (-not (Get-ComputerRestorePoint -ErrorAction SilentlyContinue)) { Enable-ComputerRestore -Drive 'C:\' }"
		net start srservice >nul 2>&1
		set "DATETIME=%DATE:/=-%_%TIME::=-%"
		set "DATETIME=%DATETIME: =0%"
		call set "POINTNAME=AutoRestore_%%DATETIME%%"
		call set "POINTNAME=%%POINTNAME:~0,40%%"
		call powershell -Command "Checkpoint-Computer -Description '%%POINTNAME%%' -RestorePointType 'MODIFY_SETTINGS'"
	)
	    set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)

::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
		sfc /scannow
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
		
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
		call :separator "Mrt.exe /F:Y /Q (This may take several hours)"
		Mrt.exe /F:Y /Q
		
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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

	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
		
		call :Spinner_OFF
		
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
		set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
		call :separator "Re-enregistrement des DLL Windows Update..."
		call :ReRegister_WindowsUpdate_DLLs
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
		Call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
		Call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb+=1
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
		Call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
		Call :Spinner_OFF
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
::::::::::::::::::::::::::::::::::::::::::::::::::::
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
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
set "C%nb%=Shutdown /s "
if /I "%shutdown%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%shutdown%"=="1" (
    set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
	if "%Start?%"=="2" (
		call :separator "Shutdown /s"
		Shutdown /s
	)
)
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb-=1
set "C%nb%=Shutdown /r /o "
if /I "%shutdownro%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%shutdownro%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Shutdown /r /o"
		shutdown /r /o
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
set /a nb-=1
set "C%nb%=Shutdown /r "
if /I "%shutdownrr%"=="0" (
    set "C%nb%=!C%nb%!%SFCRED%OFF%SRESET%"
)
if /I "%shutdownrr%"=="1" (
	if "%Start?%"=="2" (
		call :separator "Shutdown /r"
		Shutdown /r
	)
	set "C%nb%=!C%nb%!%SFCGREEN%ON%SRESET%"
)
set /a nb+=1
set /a nb+=1
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
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
:::::::::::::::::::::::::::::::::::::::::::::::::::
if /I "%valeur%"=="Return to the main menu" (
	set choix=A999
	goto :Preparateur_de_variable
)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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
	)
)
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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
		exit
	)
)
::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::: USB !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
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
	goto :Erreur
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
:::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::
CALL SET var=%%%Reset_Ligne_Menu%%choix%%%
if "%var%"=="" ( 
	set var=%Reset_Ligne_Menu%
	)
set Ligne_Menu=%var%
if "%var%0"=="" ( 
	set var=%Reset_Ligne_Menu%
	)
:::::::::::::::::::::::::::::::::::::::::::::::::::
call :AutoLigneMenu C Ligne_MenuC
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

:ARGC_mode_?
 IF [%3]==[] (
	goto :skip_Preparateur_de_variable
 ) else (
	set Choix=%~3
	shift
	goto :Preparateur_de_variable
 )

:skip_Preparateur_de_variable
goto :Interface


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
 
 
 :END_Menu
 echo.
 set print=0
 set Ligne_Menu=%Reset_Ligne_Menu%
 set /p choix=%SRESET% Select washing program : %SRESET%
 if "%choix%"==" " ( set choix=A999 )
 echo %choix% | findstr /R /C:"^[A-Za-z0-9][A-Za-z0-9]*$" >nul
 if not errorlevel 1 (
	echo.
    echo|set /p="%SFCRED%Forbidden character: Parenthesis. Exiting with fatal error.%SRESET% "
    echo.
	goto :Erreur
 )
 if %choix% EQU 0 ( goto :mode_console )
 ::preparateur de variable
 goto :Preparateur_de_variable


:Run
goto :ALL


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


:separatorIn_progress
echo|set /p="%SRESET%%date% %TIME%"
echo.
echo.
echo|set /p=%1
echo.
echo.
:: Copier l'argument dans une variable locale avec delayed expansion
set "arg=%~1"

:: Texte de comparaison
set "finishText=The script has finished executing all the requested commands and will close as soon as you end the pause."

:: Comparaison
if "%arg%"=="%finishText%" (
    <nul set /p ="%NFCGREEN%Finish !%SRESET%"
) else (
    <nul set /p ="In Progress..."
)
echo.
echo.
exit /b

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

:Spinner_Start
cd /D "%~dp0".
if exist stop.txt (
	del stop.txt
	goto :eof
)
if exist Spinner.cmd (
	start "" Spinner.cmd
) else (
	echo|set /p="%SRESET% %NFCRED%Spinner.cmd Disabled %SRESET% !"
	echo.
	echo.
)
goto :eof

:Spinner_OFF
cd /D "%~dp0"
if exist Spinner.cmd (
    type nul > stop.txt
) else (
    echo|set /p="%SRESET% %NFCRED%Spinner.cmd Disabled %SRESET% ! "
	echo.
	echo.
)
goto :eof

:Erreur
echo.
echo.
echo.
echo|set /p="[0m  ERROR ¡¡¡¡ ¡¡¡ ¡¡ ¡ "
echo.
echo.
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
echo|set /p="[0m                               [31m\_/"
echo.
echo.
echo.
timeout /t 60 /nobreak
exit

:ReRegister_WindowsUpdate_DLLs
for %%i in (
    atl.dll urlmon.dll mshtml.dll shdocvw.dll browseui.dll jscript.dll vbscript.dll scrrun.dll
    msxml.dll msxml3.dll msxml6.dll actxprxy.dll softpub.dll wintrust.dll dssenh.dll rsaenh.dll
    gpkcsp.dll sccbase.dll slbcsp.dll cryptdlg.dll oleaut32.dll ole32.dll shell32.dll initpki.dll
    wuapi.dll wuaueng.dll wuaueng1.dll wucltui.dll wups.dll wups2.dll wuweb.dll qmgr.dll
    qmgrprxy.dll wucltux.dll muweb.dll wuwebv.dll
) do regsvr32.exe /s %%i
echo|set /p="✅ Windows Update has been completely reset !"
echo.
goto :eof

:Quiz
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