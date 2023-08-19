@echo off
:: Any unauthorized modification of this ferra is at your own risk.
:: You are allowed to modify all the parameters by default in the large frame at the beginning of the file except the version number
::  ______________________________________________________ 
:: /                                                      \
:: |                Computer Wash Ulitmate                |
:: |______________________________________________________|
:: |                                                      |
:: |    https://computerwash.wixsite.com/computer-wash    |
:: |______________________________________________________|
:: |                                           |          |
:: | Created : PastequeOsaure V 0.0 -> V 6.4   | 17/09/19 |
:: |___________________________________________|__________|
:: |                                           |          |
:: |    Edit by : PastequeOsaure V OK.6.4      | 19/08/23 |
:: |                                           |          |
:: |    Participation :                        |          |
:: |    |--------------------------------------|          |
:: |    | AAA3A      : cd /D "%~dp0". -------- | 07/07/21 |
:: |    \--------------------------------------|          |
:: |                                           |          |
:: |___________________________________________|__________|
:: |                                                      |
:: |    Color ?                                           |
:: |                                                      |
set Color=1
:: |                                                      |
:: |    0) OFF                                            |
:: |    1) ON ( default )                                 |
:: |______________________________________________________|
:: |                                                      |
:: | ARGUMENT                                             |
:: | _ _                                              _ _ |
:: |                                                      |
:: |  Argument ?                                          |
:: |           no -> AUTO ?                               |
:: |                      no -> Menu ?                    |
:: |                                 no = Erreur          |
:: |                                    = Seurity -> Exit |
:: |                                                      |
:: | _ _                                              _ _ |
:: |                                                      |
set AUTO=0
:: |                                                      |
:: | 0 = Menu ( default )                                 |
:: | skip ( Stop AUTO + Stop Argument )                   |
:: | A1,A2,A3,A4                                          |
:: | S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,USB,SETUP |
:: | _ _                                              _ _ |
:: |                                                      |
:: |  Restart ? ( O2 )  0 = OFF 1 = ON                    |
:: |                                                      |
:: |  0 = OFF ( default )                                 |
:: |                                                      |
set confARGCrestart=0
:: | _ _                                              _ _ |
:: |                                                      |
:: |  Info key ? ( O5 ) 0 = OFF 1 = ON                    |
:: |                                                      |
:: |  0 = OFF ( default )                                 |
:: |                                                      |
set confARGCinfokey=0
:: | _ _                                              _ _ |
:: |                                                      |
:: | Example arg :                                        |
:: |             : ./ComputerWash.cmd A1                  |
:: |             : ./ComputerWash.cmd USB                 |
:: |______________________________________________________|
:: |                                                      |
:: | Copy computerwash to system32 0 = OFF 1 = ON         |
:: |                                                      |
:: | 1 = ON ( default )                                   |
:: |                                                      |
set copy=1
:: |                                                      |
:: | Usage                                                |
:: | Windows + R ComputerWash.cmd or ComputerWash.cmd arg |
:: | else                                                 |
:: | CMD (admin) ComputerWash.cmd or ComputerWash.cmd arg |
:: |______________________________________________________|
:: |                                                      |
:: |    From this point I advise you not to make          |
:: |    any changes.                                      |
:: |                                                      |
:: |    ( A vos risques et perils ! ! ! ! )               |
:: |    ( At your own risk ! ! ! ! )                      |
:: \______________________________________________________/

:: - Default settings -
@echo off
title Computer wash ERR ADMIN
cd /D "%~dp0".
set langue=1
set Log=1
if /I "%LOG%"=="1" (
echo . > "%CD%\Computer Wash Log.txt"
echo "  ______________________________________________________  " >> "%CD%\Computer Wash Log.txt"
echo " /                                                      \ " >> "%CD%\Computer Wash Log.txt"
echo " | Computer Wash LOG EDITION V 0.4 - %DATE%         | " >> "%CD%\Computer Wash Log.txt"
echo " |______________________________________________________| " >> "%CD%\Computer Wash Log.txt"
echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"
echo " |                | Computer Wash Ultimate              | " >> "%CD%\Computer Wash Log.txt"
echo " |----------------|_____________________________________| " >> "%CD%\Computer Wash Log.txt"
echo " |                                                      | " >> "%CD%\Computer Wash Log.txt"
echo " | Created : Computer Wash          ------ | %date% | " >> "%CD%\Computer Wash Log.txt"
echo " |______________________________________________________| " >> "%CD%\Computer Wash Log.txt"
echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"
)
if /I "%LOG%"=="2" ( echo " Launch Computer Wash Ultimate " > "%CD%\Computer Wash Log.txt" )
set Anyreproductionisstrictlyprohibited=1

:: - Admin -
if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% :: -- Admin -- " >> "%CD%\Computer Wash Log.txt" )
If _%1_==_payload_  goto :copy
if /I "%LOG%"=="2" ( echo " %TIME% ERREUR ADMIN " >> "%CD%\Computer Wash Log.txt" )
:Admin
 set vbs=%temp%\getadmin.vbs
 echo Set UAC = CreateObject^("Shell.Application"^)>> "%vbs%"
 echo UAC.ShellExecute "%~s0", "payload %~sdp0 %*", "", "runas", 1 >> "%vbs%"
 "%temp%\getadmin.vbs"
 del "%temp%\getadmin.vbs"
 goto :eof

:: - copy to system 32 -
:copy
 if /I "%copy%"=="1" (
	xcopy "ComputerWash.cmd" "%windir%\system32\"  /s /h /y
 )

 :: - Var -
 :Var
 if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% :: -- Var -- " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% :Var " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% PASS ADMIN " >> "%CD%\Computer Wash Log.txt" )
 set V=V OK.6.4

 :: - V -
 title Computer wash Ultimate %V%
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set V=V 6.FIN " >> "%CD%\Computer Wash Log.txt" )
 set t=3
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set t=%t% " >> "%CD%\Computer Wash Log.txt" )
 set Erreur=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Erreur=%Erreur% " >> "%CD%\Computer Wash Log.txt" )
 set Starttotal=1
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Starttotal=%Starttotal% " >> "%CD%\Computer Wash Log.txt" )
 set total=1
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set total=%total% " >> "%CD%\Computer Wash Log.txt" )
 set Progres=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Progres=%Progres% " >> "%CD%\Computer Wash Log.txt" )
 set verifyChoise=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set verifyChoise=%verifyChoise% " >> "%CD%\Computer Wash Log.txt" )
 set Start?=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Start?=%Start?% " >> "%CD%\Computer Wash Log.txt" )

 :: - Var Other -
 if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% :: -- Var Other -- " >> "%CD%\Computer Wash Log.txt" )
 set verify=1
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set verify=%verify% " >> "%CD%\Computer Wash Log.txt" )
 set Restart=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Restart=%Restart% " >> "%CD%\Computer Wash Log.txt" )
 set Security=1
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Security=%Security% " >> "%CD%\Computer Wash Log.txt" )
 set Help=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Help=%Help% " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Color=%Color% " >> "%CD%\Computer Wash Log.txt" )
 set Shutdown=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Shutdown=%Shutdown% " >> "%CD%\Computer Wash Log.txt" )

 :: - Var Menu A -
 if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% :: -- Var Menu A -- " >> "%CD%\Computer Wash Log.txt" )
 set A1=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set A1=%A1% " >> "%CD%\Computer Wash Log.txt" )
 set A2=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set A2=%A2% " >> "%CD%\Computer Wash Log.txt" )
 set A3=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set A3=%A3% " >> "%CD%\Computer Wash Log.txt" )
 set A4=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set A4=%A4% " >> "%CD%\Computer Wash Log.txt" )

 :: - Var Menu S -
 if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% :: -- Var Menu S -- " >> "%CD%\Computer Wash Log.txt" )
 set S1=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S1=%S1% " >> "%CD%\Computer Wash Log.txt" )
 set S2=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S2=%S2% " >> "%CD%\Computer Wash Log.txt" )
 set S3=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S3=%S3% " >> "%CD%\Computer Wash Log.txt" )
 set S4=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S4=%S4% " >> "%CD%\Computer Wash Log.txt" )
 set S5=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S5=%S5% " >> "%CD%\Computer Wash Log.txt" )
 set S6=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S6=%S6% " >> "%CD%\Computer Wash Log.txt" )
 set S7=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S7=%S7% " >> "%CD%\Computer Wash Log.txt" )
 set S8=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S8=%S8% " >> "%CD%\Computer Wash Log.txt" )
 set S9=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S9=%S9% " >> "%CD%\Computer Wash Log.txt" )
 set S10=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S10=%S10% " >> "%CD%\Computer Wash Log.txt" )
 set S11=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S11=%S11% " >> "%CD%\Computer Wash Log.txt" )
 set S12=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S12=%S12% " >> "%CD%\Computer Wash Log.txt" )
 set S13=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set S3=%S13% " >> "%CD%\Computer Wash Log.txt" )
 set chrome=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set chrome=%chrome% " >> "%CD%\Computer Wash Log.txt" )
 set Firefox=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Firefox=%Firefox% " >> "%CD%\Computer Wash Log.txt" )
 set VLC=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set VLC=%VLC% " >> "%CD%\Computer Wash Log.txt" )
 set Acrobat=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Acrobat=%Acrobat% " >> "%CD%\Computer Wash Log.txt" )
 set 7zip=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set 7zip=%7zip% " >> "%CD%\Computer Wash Log.txt" )
 set KeePass=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set KeePass=%KeePass% " >> "%CD%\Computer Wash Log.txt" )

 :: - Var Menu C -
 if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% :: -- Var Menu C -- " >> "%CD%\Computer Wash Log.txt" )
 set C1=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C1=%C1% " >> "%CD%\Computer Wash Log.txt" )
 set C2=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C2=%C2% " >> "%CD%\Computer Wash Log.txt" )
 set C3=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C3=%C3% " >> "%CD%\Computer Wash Log.txt" )
 set C4=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C4=%C4% " >> "%CD%\Computer Wash Log.txt" )
 set C5=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C5=%C5% " >> "%CD%\Computer Wash Log.txt" )
 set C6=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C6=%C6% " >> "%CD%\Computer Wash Log.txt" )
 set C7=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C7=%C7% " >> "%CD%\Computer Wash Log.txt" )
 set C8=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C8=%C8% " >> "%CD%\Computer Wash Log.txt" )
 set C9=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C9=%C9% " >> "%CD%\Computer Wash Log.txt" )
 set C10=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set C10=%C10% " >> "%CD%\Computer Wash Log.txt" )

 :: - Variable commande -
 if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
 if /I "%LOG%"=="2" ( echo " %TIME% :: -- Varable commande -- " >> "%CD%\Computer Wash Log.txt" )
 set bcdboot=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set bcdboot=%bcdboot% " >> "%CD%\Computer Wash Log.txt" )
 set chkdsk=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set chkdsk=%chkdsk% " >> "%CD%\Computer Wash Log.txt" )
 set cleanmgr=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set cleanmgr=%cleanmgr% " >> "%CD%\Computer Wash Log.txt" )
 set del=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set del=%del% " >> "%CD%\Computer Wash Log.txt" )
 set defrag=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set defrag=%defrag% " >> "%CD%\Computer Wash Log.txt" )
 set DISM=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set DISM=%DISM% " >> "%CD%\Computer Wash Log.txt" )
 set mode=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set mode=%mode% " >> "%CD%\Computer Wash Log.txt" )
 set pnpunattend=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set pnpunattend=%pnpunattend% " >> "%CD%\Computer Wash Log.txt" )
 set findstr=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set findstr=%findstr% " >> "%CD%\Computer Wash Log.txt" )
 set mdsched=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set mdsched=%mdsched% " >> "%CD%\Computer Wash Log.txt" )
 set ipconfig=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set ipconfig=%ipconfig% " >> "%CD%\Computer Wash Log.txt" )
 set Mrt=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set Mrt=%Mrt% " >> "%CD%\Computer Wash Log.txt" )
 set netsh=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set netsh=%netsh% " >> "%CD%\Computer Wash Log.txt" )
 set rstrui=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set rstrui=%rstrui% " >> "%CD%\Computer Wash Log.txt" )
 set sfc=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set sfc=%sfc% " >> "%CD%\Computer Wash Log.txt" )
 set systemreset=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set systemreset=%systemreset% " >> "%CD%\Computer Wash Log.txt" )
 set wsreset=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set wsreset=%wsreset% " >> "%CD%\Computer Wash Log.txt" )
 set download=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set wsreset=%download% " >> "%CD%\Computer Wash Log.txt" )
 set InfoKey=0
 if /I "%LOG%"=="2" ( echo " %TIME% PASS set wsreset=%InfoKey% " >> "%CD%\Computer Wash Log.txt" )

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
 set SRESET=
 set SBOLD=
 set SUNDERLINE=
 set SINVERSE=
 :: - NORMAL FOREGROUND COLORS
 set NFCBLACK=
 set NFCRED=
 set NFCGREEN=
 set NFCYELLOW=
 set NFCBLUE=
 set NFCMAGENTA=
 set NFCCYAN=
 set NFCWHITE=
 :: - NORMAL BACKGROUND COLORS
 set NBCBLACK=
 set NBCRED=
 set NBCGREEN=
 set NBCYELLOW=
 set NBCBLUE=
 set NBCMAGENTA=
 set NBCCYAN=
 set NBCWHITE=
 :: - STRONG FOREGROUND COLORS
 set SFCBLACK=
 set SFCRED=
 set SFCGREEN=
 set SFCYELLOW=
 set SFCBLUE=
 set SFCMAGENTA=
 set SFCCYAN=
 set SFCWHITE=
 :: - STRONG BACKGROUND COLORS
 set SBCBLACK=
 set SBCRED=
 set SBCGREEN=
 set SBCYELLOW=
 set SBCBLUE=
 set SBCMAGENTA=
 set SBCCYAN=
 set SBCWHITE=
 )
 if /I "%LOG%"=="1" (
 echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"
 echo " |----------------| Nom du PC : %COMPUTERNAME% " >> "%CD%\Computer Wash Log.txt"
 echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"  
 echo " |----------------| Var OK                              | " >> "%CD%\Computer Wash Log.txt"  
 echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"  
 )
 :: - ARGC ARGV - Argument mode ? -
 if /I "%AUTO%"=="skip" (
	 IF [%3]==[] goto:ARISP
	 echo " \______________________________________________________/ " >> "%CD%\Computer Wash Log.txt"
	 exit
 )
 echo " |----------------| Nom du PC : %COMPUTERNAME% %AUTO%" >> "%CD%\Computer Wash Log.txt"
 IF [%3]==[] goto:MODEAUTO
 echo.
 echo Nom du programme : Computer Wash
 echo.
 echo Ensemble des arguments : %*
 echo.
 echo Argument Pris en compte : %3
 echo.
 echo " ! Timeout 10 ou CTRL + c ! "
 echo.
 timeout 10
 set AUTO=%~3
 :MODEAUTO
 if /I "%AUTO%"=="A1" if /I "%AUTO%"=="a1" (
 set DISM=1
 set sfc=1
 )
 if /I "%AUTO%"=="A2" if /I "%AUTO%"=="a2" (
 set DISM=1
 set sfc=1
 set del=1
 )
 if /I "%AUTO%"=="A3" if /I "%AUTO%"=="a3" (
 set chkdsk=1
 set cleanmgr=1
 set DISM=1
 set sfc=1
 set findstr=1
 set del=1
 )
 if /I "%AUTO%"=="A4" if /I "%AUTO%"=="a4" (
 set chkdsk=1
 set cleanmgr=1
 set DISM=1
 set sfc=1
 set findstr=1
 set Mrt=1
 set ipconfig=1
 set wsreset=1
 set del=1
 )
 if /I "%AUTO%"=="S1" if /I "%AUTO%"=="s1" (
 set Mrt=1
 )
 if /I "%AUTO%"=="S2" if /I "%AUTO%"=="s2" (
 set mdsched=1
 )
 if /I "%AUTO%"=="S3" if /I "%AUTO%"=="s3" (
 set chkdsk=1
 )
 if /I "%AUTO%"=="S4" if /I "%AUTO%"=="s4" (
 set cleanmgr=1
 )
 if /I "%AUTO%"=="S5" if /I "%AUTO%"=="s5" (
 set bcdboot=1
 )
 if /I "%AUTO%"=="S6" if /I "%AUTO%"=="s6" (
 set rstrui=1
 )
 if /I "%AUTO%"=="S7" if /I "%AUTO%"=="s7" (
 set ipconfig=1
 )
 if /I "%AUTO%"=="S8" if /I "%AUTO%"=="s8" (
 set systemreset=1
 )
 if /I "%AUTO%"=="S9" if /I "%AUTO%"=="s9" (
 set wsreset=1
 )
 if /I "%AUTO%"=="S10" if /I "%AUTO%"=="s10" (
 set del=1
 )
 if /I "%AUTO%"=="S11" if /I "%AUTO%"=="s11" (
 set pnpunattend=1
 set mode=1
 )
 if /I "%AUTO%"=="S12" if /I "%AUTO%"=="s11" (
 set DISM=1
 set sfc=1
 set findstr=1
 )
 if /I "%AUTO%"=="USB" if /I "%AUTO%"=="usb" (
 goto:USB
 )
 verify on
 set Restart=%confARGCrestart%
 set Security=1
 set InfoKey=%confARGCinfokey%
 if /I "%AUTO%"=="SETUP" if /I "%AUTO%"=="setup" ( 
 set chrome=1
 set Firefox=1
 set VLC=1
 set Acrobat=1
 set 7zip=1
 set KeePass=1
 )
 set Anyreproductionisstrictlyprohibited=0
 if /I "%AUTO%"=="0" (
	set Start?=0
	) else (
		set Start?=1
	)
 set AUTO=skip
 :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 :: - Any reproduction is strictly prohibited -
 :ARISP
 if /I "%Anyreproductionisstrictlyprohibited%"=="1" (
 set Anyreproductionisstrictlyprohibited=0
 Mode Con Cols=59 Lines=25
 echo .
 echo|set /p=".%SFCYELLOW%  ______________________________________________________"
 echo.
 echo|set /p=".%SFCYELLOW% /                |%SRESET%  %SBOLD%Computer Wash%SFCYELLOW%                      \"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCBLUE%  /----------\  %SFCYELLOW%|_____________________________________|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCBLUE%  | %SRESET%##   *** %SFCBLUE%|  %SFCYELLOW%|                                     |"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCBLUE%  |----------|  %SFCYELLOW%|%SRESET%- Any unauthorized modification      %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCBLUE%  |          |  %SFCYELLOW%|%SRESET%  of this ferra is at your own risk. %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCBLUE%  |  %SRESET%/----\  %SFCBLUE%|  %SFCYELLOW%|%SFCYELLOW%_____________________________________%SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCBLUE%  |  %SRESET%|    |  %SFCBLUE%|  %SFCYELLOW%|%SFCYELLOW%                                     %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCBLUE%  |  %SRESET%\----/  %SFCBLUE%|  %SFCYELLOW%|%SRESET%- You are allowed to modify all the  %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCBLUE%  \----------/  %SFCYELLOW%|%SRESET%  parameters by default in the large %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCYELLOW%________________%SFCYELLOW%|%SRESET%  frame at the beginning of this     %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCGREEN%                %SFCYELLOW%|%SRESET%  file except the version number.    %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SRESET%  %NBCRED%    %NBCGREEN%    %NBCYELLOW%    %SRESET%  %SFCYELLOW%|%SFCYELLOW%_____________________________________%SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SRESET%  %NBCBLUE%    %NBCMAGENTA%    %NBCCYAN%    %SRESET%  %SFCYELLOW%|%SRESET%                                     %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SRESET%  %NBCWHITE%    %SBCBLACK%    %SBCRED%    %SRESET%  %SFCYELLOW%|%SFCRED%- %SRESET%%SUNDERLINE%Press CTRL+C to EXIT%SRESET% %SFCRED%------------- %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SRESET%  %SBCGREEN%    %SBCYELLOW%    %SBCBLUE%    %SRESET%  %SFCYELLOW%|%SFCGREEN%- %SRESET%%SUNDERLINE%Press ENTER to continue%SRESET% %SFCGREEN%---------- %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |%SFCYELLOW%________________%SFCYELLOW%|%SFCYELLOW%_____________________________________%SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |                                                      %SFCYELLOW%|"
 echo.
 echo|set /p=".%SFCYELLOW% |  %SFCCYAN%     Any reproduction is strictly prohibited.      %SFCYELLOW% | %SRESET%"
 echo.
 echo|set /p=".%SFCYELLOW% |  %SFCCYAN%  https://computerwash.wixsite.com/computer-wash   %SFCYELLOW% | %SRESET%"
 echo.
 echo|set /p=".%SFCYELLOW% \%SFCYELLOW%______________________________________________________%SFCYELLOW%/ %SRESET%"
 echo.
 echo .
 pause >nul
 )
 :: - Any reproduction is strictly prohibited -
 if /I "%LOG%"=="1" (
 echo " |- %TIME% --| ADMIN OK -------------------------- | " >> "%CD%\Computer Wash Log.txt"
 echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"  
 echo " |- %TIME% --| Menu       ------------------------ | " >> "%CD%\Computer Wash Log.txt"
 )
 ::  - interface Start -
 :Interface
 :: - total -
 if /I "%total%"=="Starttotal" (
 set /A Progress=100
 ) else (
 set /A Progress=%total% * 100 / %Starttotal%
 )
if /I "%Start?%"=="2" (
set /A total+=1
)
if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% :: -- Div -- " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% :: PASS Progress=%Progress% " >> "%CD%\Computer Wash Log.txt" )
::  - interface -
if /I "%Start?%"=="0" (
Mode Con Cols=105 Lines=49
) else (
Mode Con Cols=105 Lines=55
)
cls
if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% ::  -- interface -- " >> "%CD%\Computer Wash Log.txt" )
::  - interface P1 -
if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% ::  -- interface P1 -- " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SFCBLACK%°_____________________________________________________________________________________________________°"
echo.
echo|set /p="%SFCBLACK%./                                                                                                     \"
echo.
echo|set /p="%SFCBLACK%.|                                                                                                     |"
echo.
echo|set /p="%SFCBLACK%.|                                                                                                     |"
echo.
echo|set /p="%SFCBLACK%.|                                           %SFCBLUE%Zone powershell                                          %SFCBLACK% |"
echo.
echo|set /p="%SFCBLACK%.|                                                                                                     |"
echo.
echo|set /p="%SFCBLACK%.|                                                                                                     |"
echo.
echo|set /p="%SFCBLACK%.|_____________________________________________________________________________________________________|"
echo.
echo|set /p="%SFCBLACK%.|                                                                                                     |"
echo.
echo|set /p="%SFCBLACK%.|                                    %NFCCYAN%Computer Wash %NFCWHITE%Ultimate %SFCRED%%V%                                  %SFCBLACK%|"
echo.
echo|set /p="%SFCBLACK%.|_____________________________________________________________________________________________________|"
echo.

::  - interface P2 -
if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% ::  -- interface P2 -- " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SFCBLACK%.|                                 |                                 |                                 |"
echo.
echo|set /p="%SFCBLACK%.|            %SUNDERLINE%%NFCYELLOW%A%SRESET%%SUNDERLINE%utomatic%SRESET%            %SFCBLACK%|            %SUNDERLINE%%NFCYELLOW%S%SRESET%%SUNDERLINE%pecific%SRESET%             %SFCBLACK%|          %SUNDERLINE%%NFCYELLOW%C%SRESET%%SUNDERLINE%ustomizable%SRESET%           %SFCBLACK%|"
echo.
echo|set /p="%SFCBLACK%.|                                 |                                 |                                 |"
echo.

echo|set /p="%SFCBLACK%.|  %NFCYELLOW%A%SRESET%1) Daily Wash                 %SFCBLACK%|  %NFCYELLOW%S%SRESET%1)  Antivirus (Auto mode)     %SFCBLACK%| %NFCYELLOW%C%SRESET%1)  Check and repair drive C "
if /I "%C1%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|  %NFCYELLOW%A%SRESET%2) Maintenance Wash           %SFCBLACK%|  %NFCYELLOW%S%SRESET%2)  Dignostic RAM             %SFCBLACK%| %NFCYELLOW%C%SRESET%2)  Disk optimization        "
if /I "%C2%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|  %NFCYELLOW%A%SRESET%3) Washing Repair             %SFCBLACK%|  %NFCYELLOW%S%SRESET%3)  Maintenance disk c        %SFCBLACK%| %NFCYELLOW%C%SRESET%3)  Repair system            "
if /I "%C3%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|  %NFCYELLOW%A%SRESET%4) Last Resort Wash           %SFCBLACK%|  %NFCYELLOW%S%SRESET%4)  Disk Cleanup              %SFCBLACK%| %NFCYELLOW%C%SRESET%4)  Antivirus (Auto mode)    "
if /I "%C4%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|_________________________________|  %NFCYELLOW%S%SRESET%5)  Start repair W --         %SFCBLACK%| %NFCYELLOW%C%SRESET%5)  sys and COM driver       "
if /I "%C5%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|                                 |  %NFCYELLOW%S%SRESET%6)  Restore system            %SFCBLACK%| %NFCYELLOW%C%SRESET%6)  Reset the ip interface   "
if /I "%C6%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|              %SUNDERLINE%%NFCYELLOW%O%SRESET%%SUNDERLINE%ther%SRESET%              %SFCBLACK%|  %NFCYELLOW%S%SRESET%7)  Reset the ip interface    %SFCBLACK%| %NFCYELLOW%C%SRESET%7)  Repair boot files        "
if /I "%C7%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|                                 %SFCBLACK%|  %NFCYELLOW%S%SRESET%8)  Reset windows             %SFCBLACK%| %NFCYELLOW%C%SRESET%8)  Reset Windows Store      "
if /I "%C8%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|  %NFCYELLOW%O%SRESET%1) Copy protection          "
if /I "%verify%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|  "
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|  "
)
echo|set /p="%NFCYELLOW%S%SRESET%9)  Reset WS cache            %SFCBLACK%| %NFCYELLOW%C%SRESET%9)  Delete temporary files   "
if /I "%C9%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|"
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|"
)
echo.

echo|set /p="%SFCBLACK%.|  %NFCYELLOW%O%SRESET%2) Restart                  "
if /I "%Restart%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|  "
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|  "
)
echo|set /p="%NFCYELLOW%S%SRESET%10) Delete temporary files    %SFCBLACK%| %NFCYELLOW%C%SRESET%10) %SFCGREEN%Start                      %SFCBLACK%|"
echo.

echo|set /p="%SFCBLACK%.|  %NFCYELLOW%O%SRESET%3) Shutdown                 "
if /I "%Shutdown%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|  "
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|  "
)
echo|set /p="%NFCYELLOW%S%SRESET%11) Update driver sys et COM  %SFCBLACK%|_________________________________|"
echo.

echo|set /p="%SFCBLACK%.|  %NFCYELLOW%O%SRESET%4) security                 "
if /I "%Security%"=="0" (
echo|set /p="%NFCRED%N %SFCBLACK%|  "
) else (
echo|set /p="%NFCGREEN%Y %SFCBLACK%|  "
)
echo|set /p="%NFCYELLOW%S%SRESET%12) Verificaton system + log  %SFCBLACK%|                                 |"
echo.
echo|set /p="%SFCBLACK%.|  %NFCYELLOW%O%SRESET%5) Info Windows + key       "
if /I "%InfoKey%"=="1" (
echo|set /p="%NFCGREEN%Y "
) else (
echo|set /p="%NFCRED%N "
)
echo|set /p="%SFCBLACK%|  %NFCYELLOW%S%SRESET%13) Windows Recovery          %SFCBLACK%|             %NFCYELLOW%%SUNDERLINE%S%SRESET%%SUNDERLINE%TATUS%SRESET%              %SFCBLACK%|"
echo.

echo|set /p="%SFCBLACK%.|                                 %SFCBLACK%|  %NFCYELLOW%USB%SRESET%) Protec USB                %SFCBLACK%|                                 |"
echo.

echo|set /p="%SFCBLACK%.|  %SRESET%COLOR%SRESET%) COLOR ON / OFF          %SFCBLACK%|  %NFCYELLOW%SETUP%SRESET%)%SFCBLACK% !%SRESET%Chrome Firefox VLC  %SFCBLACK%!  %SFCBLACK%|      %SFCBLUE%**********************     %SFCBLACK%|"
echo.
echo|set /p="%SFCBLACK%.|  %NFCYELLOW%HELP%SRESET%)  HELP                    %SFCBLACK%|  (BETA)%SRESET%%SFCBLACK% !%SRESET%Acrobat 7zip KeePASS%SFCBLACK%!  %SFCBLACK%|%SFCBLUE%      * %SRESET%Progress           %SFCBLUE%*%SFCBLACK%     |"
echo.
echo|set /p="%SFCBLACK%.|_________________________________|_________________________________|%SFCBLUE%      *%NFCYELLOW%--------------------%SFCBLUE%*     %SFCBLACK%|"
echo.
if /I "%Progress%"=="100" (
echo|set /p="%SFCBLACK%.|                                 |                                 |%SFCBLUE%      *%SRESET%              %Progress% %% %SFCBLUE%*     %SFCBLACK%|"
) else (
if %Progress% LEQ 10 (
echo|set /p="%SFCBLACK%.|                                 |                                 |%SFCBLUE%      *%SRESET%                %Progress% %% %SFCBLUE%*     %SFCBLACK%|"
) else (
echo|set /p="%SFCBLACK%.|                                 |                                 |%SFCBLUE%      *%SRESET%               %Progress% %% %SFCBLUE%*     %SFCBLACK%|"
)
)
echo.
echo|set /p="%SFCBLACK%.|              %SUNDERLINE%%NFCYELLOW%E%SRESET%%SUNDERLINE%xit%SRESET%               %SFCBLACK%|              %SUNDERLINE%%NFCYELLOW%L%SRESET%%SUNDERLINE%ink%SRESET%               %SFCBLACK%|      %SFCBLUE%**********************     %SFCBLACK%|"
echo.
echo|set /p="%SFCBLACK%.|                                 |                                 %SFCBLACK%|     %SUNDERLINE%%NFCRED%    %NFCGREEN%    %NFCYELLOW%    %NFCBLUE%    %NFCMAGENTA%    %NFCCYAN%    %SRESET%%SFCBLACK%    |"
echo.
echo|set /p="%SFCBLACK%.|   %NFCYELLOW%E%SRESET%1) %SFCRED%Exit%SRESET% -------------------- %SFCBLACK%|  %NFCYELLOW%L%SRESET%1) Computer Wash              %SFCBLACK%|                                 |"
echo.
echo|set /p="%SFCBLACK%.|   %NFCYELLOW%E%SRESET%2) Shutdown ---------------- %SFCBLACK%|  %NFCYELLOW%L%SRESET%2) ???????????                %SFCBLACK%|     %SRESET%%date%  %time%     %SFCBLACK%|"
echo.

echo|set /p="%SFCBLACK%.|_________________________________|_________________________________|_________________________________|"
echo.

::  - interface P3 -
if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% ::  -- interface P3 -- " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SFCBLACK%.|                                                                   |                                 |"
echo.
echo|set /p="%SFCBLACK%.| %SFCCYAN%Any reproduction is strictly prohibited.                          %SFCBLACK%| %SRESET%- P A S T E Q U E O S A U R E -%SRESET%%SFCBLACK% |"
::echo|set /p="%SFCBLACK%.| %SFCCYAN%Any reproduction is strictly prohibited.                          %SFCBLACK%| %NBCRED% %SRESET% %NBCYELLOW% %SRESET% %NBCMAGENTA% %SRESET% %NBCWHITE% %SRESET% %SBCRED% %SRESET% %SBCYELLOW% %SRESET% %SBCMAGENTA% %SRESET% %SBCWHITE% %SRESET% %NBCGREEN% %SRESET% %NBCBLUE% %SRESET% %NBCCYAN% %SRESET% %SBCBLACK% %SRESET% %SBCGREEN% %SRESET% %SBCBLUE% %SRESET% %SBCCYAN% %SRESET% %SBCYELLOW% %SRESET%%SFCBLACK% |"
echo.
echo|set /p="%SFCBLACK%.|___________________________________________________________________|_________________________________|"
echo.
echo|set /p="%SFCBLACK%.|                                                                                                     |"
echo.
echo|set /p="%SFCBLACK%.|           %NFCCYAN%https://github.com/Pastequeosaure/ComputerWash.cmd/blob/main/ComputerWash.cmd             %SFCBLACK%|"
echo.
echo|set /p="%SFCBLACK%.\_____________________________________________________________________________________________________/%SRESET%"
echo.
echo.
if /I "%InfoKey%"=="1" (
systeminfo | find /i "Microsoft windows"
echo.
echo|set /p="%SRESET% Windows KEY :"
echo.
echo.
wmic path softwarelicensingservice get OA3xOriginalProductKey
)
::  - Select ? -
if /I "%LOG%"=="2" ( echo " %TIME% :: " >> "%CD%\Computer Wash Log.txt" )

if /I "%Start?%"=="0" (
if /I "%LOG%"=="1" (
echo " |- %TIME% --| Menu OK --------------------------- | " >> "%CD%\Computer Wash Log.txt"
echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"  
echo " |- %TIME% --| Select  --------------------------- | " >> "%CD%\Computer Wash Log.txt"
)
if /I "%LOG%"=="2" ( echo " %TIME% ::  -- Select ? -- " >> "%CD%\Computer Wash Log.txt" )
set choix=0
set /p choix=%SRESET% Select washing program : %SRESET%
if /I "%LOG%"=="2" ( 
echo " %TIME% ::  PASS set /p choix=%choix% " >> "%CD%\Computer Wash Log.txt"
)
)
:: - Prog Menu -
:Prog
if /I "%LOG%"=="2" ( echo " %TIME% :: -- Prog -- " >> "%CD%\Computer Wash Log.txt" )
if /I "%Start?%"=="0" (
if /I "%LOG%"=="1" (
echo " |- %TIME% --| Select %choix% " >> "%CD%\Computer Wash Log.txt"
echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"  
echo " |- %TIME% --| Prog  ----------------------------- | " >> "%CD%\Computer Wash Log.txt"
echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"
)
if /I "%choix%"=="A1" if /I "%choix%"=="a1" (
set defrag=0
set DISM=1
set sfc=1
set Start?=1
)
if /I "%choix%"=="A2" if /I "%choix%"=="a2" (
set defrag=0
set DISM=1
set sfc=1
set del=1
set Start?=1
)
if /I "%choix%"=="A3" if /I "%choix%"=="a3" (
set chkdsk=1
set defrag=0
set cleanmgr=1
set DISM=1
set sfc=1
set findstr=1
set del=1
set Start?=1
)
if /I "%choix%"=="A4" if /I "%choix%"=="a4" (
set chkdsk=1
set defrag=0
set cleanmgr=1
set DISM=1
set sfc=1
set findstr=1
set Mrt=1
set ipconfig=1
set wsreset=1
set del=1
set Start?=1
)
if /I "%choix%"=="S1" if /I "%choix%"=="s1" (
set Mrt=1
set Start?=1
)
if /I "%choix%"=="S2" if /I "%choix%"=="s2" (
set mdsched=1
set Start?=1
)
if /I "%choix%"=="S3" if /I "%choix%"=="s3" (
set chkdsk=1
set Start?=1
)
if /I "%choix%"=="S4" if /I "%choix%"=="s4" (
set defrag=0
set cleanmgr=1
set Start?=1
)
if /I "%choix%"=="S5" if /I "%choix%"=="s5" (
set bcdboot=1
set Start?=1
)
if /I "%choix%"=="S6" if /I "%choix%"=="s6" (
set rstrui=1
set Start?=1
)
if /I "%choix%"=="S7" if /I "%choix%"=="s7" (
set ipconfig=1
set Start?=1
)
if /I "%choix%"=="S8" if /I "%choix%"=="s8" (
set systemreset=1
set Start?=1
)
if /I "%choix%"=="S9" if /I "%choix%"=="s9" (
set wsreset=1
set Start?=1
)
if /I "%choix%"=="S10" if /I "%choix%"=="s10" (
set del=1
set Start?=1
)
if /I "%choix%"=="S11" if /I "%choix%"=="s11" (
set pnpunattend=1
set mode=1
set Start?=1
)
if /I "%choix%"=="S12" if /I "%choix%"=="s11" (
set DISM=1
set sfc=1
set findstr=1
set Start?=1
)
if /I "%choix%"=="USB" if /I "%choix%"=="usb" (
goto:USB
)
if /I "%choix%"=="C1" if /I "%choix%"=="c1" (
if /I "%C1%"=="0" (
set C1=1
set chkdsk=1
) else (
set C1=0
set chkdsk=0
)
)
if /I "%choix%"=="C2" if /I "%choix%"=="c2" (
if /I "%C2%"=="0" (
set C2=1
set defrag=0
set cleanmgr=1
) else (
set C2=0
set defrag=0
set cleanmgr=0
)
)
if /I "%choix%"=="C3" if /I "%choix%"=="c3" (
if /I "%C3%"=="0" (
set C3=1
set DISM=1
set sfc=1
set findstr=1
) else (
set C3=0
set DISM=0
set sfc=0
set findstr=0
)
)
if /I "%choix%"=="C4" if /I "%choix%"=="c4" (
if /I "%C4%"=="0" (
set C4=1
set Mrt=1
) else (
set C4=0
set Mrt=0
)
)
if /I "%choix%"=="C5" if /I "%choix%"=="c5" (
if /I "%C5%"=="0" (
set C5=1
set pnpunattend=1
set mode=1
) else (
set C5=0
set pnpunattend=0
set mode=0
)
)
if /I "%choix%"=="C6" if /I "%choix%"=="c6" (
if /I "%C6%"=="0" (
set C6=1
set ipconfig=1
) else (
set C6=0
set ipconfig=0
)
)
if /I "%choix%"=="C7" if /I "%choix%"=="c7" (
if /I "%C7%"=="0" (
set C7=1
set bcdboot=1
) else (
set C7=0
set bcdboot=0
)
)
if /I "%choix%"=="C8" if /I "%choix%"=="c8" (
if /I "%C8%"=="0" (
set C8=1
set wsreset=1
) else (
set C8=0
set wsreset=0
)
)
if /I "%choix%"=="C9" if /I "%choix%"=="c9" (
if /I "%C9%"=="0" (
set C9=1
set del=1
) else (
set C9=0
set del=0
)
)
if /I "%choix%"=="C10" if /I "%choix%"=="c10" (
set Start?=1
)
if /I "%choix%"=="O1" if /I "%choix%"=="o1" (
if /I "%verify%"=="0" (
set verify=1
verify on
) else (
set verify=0
verify off
)
)
if /I "%choix%"=="O2" if /I "%choix%"=="o2" (
if /I "%Restart%"=="0" (
set Restart=1
set Shutdown=0
) else (
set Restart=0
)
)
if /I "%choix%"=="O3" if /I "%choix%"=="o3" (
if /I "%Shutdown%"=="0" (
set Shutdown=1
set Restart=0
) else (
set Shutdown=0
)
)
if /I "%choix%"=="O4" if /I "%choix%"=="o4" (
if /I "%Security%"=="0" (
set Security=1
) else (
set Security=0
)
)
if /I "%choix%"=="O5" if /I "%choix%"=="o5" (
if /I "%InfoKey%"=="0" (
set InfoKey=1
) else (
set InfoKey=0
)
)
if /I "%choix%"=="HELP" if /I "%choix%"=="help" (
if /I "%Help%"=="0" (
set Help=1
goto:Help
) else (
set Help=0
)
)
if /I "%choix%"=="COLOR" if /I "%choix%"=="color" (
if /I "%Color%"=="0" (
set Color=1
goto:Var
) else (
set Color=0
goto:Var
)
)
if /I "%choix%"=="E1" if /I "%choix%"=="e1" (
goto:exit
)
if /I "%choix%"=="E2" if /I "%choix%"=="e2" (
shutdown /f
)
if /I "%choix%"=="L1" if /I "%choix%"=="l1" (
start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private  https://computerwash.wixsite.com/computer-wash
)
if /I "%choix%"=="L2" if /I "%choix%"=="l2" (
start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private  https://computerwash.wixsite.com/computer-wash/dev
::ommek://fwerikh.xc/2xPBaYcj4G
::https://www.dcode.fr/chiffre-vigenere
)
if /I "%choix%"=="S13" if /I "%choix%"=="s13" ( shutdown.exe /r /o )
if /I "%choix%"=="SETUP" if /I "%choix%"=="setup" ( 
set chrome=1
set Firefox=1
set VLC=1
set Acrobat=1
set 7zip=1
set KeePass=1
set Start?=1
)
)
if /I "%Start?%"=="1" (
:: - Preparateur de variable -
:: - End Menu -
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Preparateur de variable ----------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% :: -- Preparateur de variable -- " >> "%CD%\Computer Wash Log.txt" )
if /I "%Security%"=="1" ( set /A Starttotal+=1 )
if /I "%chkdsk%"=="1" ( set /A Starttotal+=1 )
if /I "%del%"=="1" ( set /A Starttotal+=1 )
if /I "%cleanmgr%"=="1" ( set /A Starttotal+=1 )
if /I "%defrag%"=="1" ( set /A Starttotal+=1 )
if /I "%DISM%"=="1" ( set /A Starttotal+=1 )
if /I "%mode%"=="1" ( set /A Starttotal+=1 )
if /I "%pnpunattend%"=="1" ( set /A Starttotal+=1 )
if /I "%bcdboot%"=="1" ( set /A Starttotal+=1 )
if /I "%findstr%"=="1" ( set /A Starttotal+=1 )
if /I "%mdsched%"=="1" ( set /A Starttotal+=1 )
if /I "%ipconfig%"=="1" ( set /A Starttotal+=1 )
if /I "%Mrt%"=="1" ( set /A Starttotal+=1 )
if /I "%rstrui%"=="1" ( set /A Starttotal+=1 )
if /I "%sfc%"=="1" ( set /A Starttotal+=1 )
if /I "%systemreset%"=="1" ( set /A Starttotal+=1 )
if /I "%wsreset%"=="1" ( set /A Starttotal+=1 )
if /I "%Security%"=="1" ( set /A Starttotal+=1 )
if /I "%chrome%"=="1" ( set /A Starttotal+=1 )
if /I "%Firefox%"=="1" ( set /A Starttotal+=1 )
if /I "%VLC%"=="1" ( set /A Starttotal+=1 )
if /I "%Acrobat%"=="1" ( set /A Starttotal+=1 )
if /I "%7zip%"=="1" ( set /A Starttotal+=1 )
if /I "%KeePass%"=="1" ( set /A Starttotal+=1 )
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Preparateur de variable OK -------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="1" ( echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt" >> "%CD%\Computer Wash Log.txt" )

set Start?=2
if /I "%Help%"=="1" (
goto:Help
)
goto:Interface
)
:: - ALGO -
if /I "%Start?%"=="2" (
if /I "%LOG%"=="2" ( echo " %TIME% :: Pass Starttotal=%Starttotal% " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% :: Pass total=%total% " >> "%CD%\Computer Wash Log.txt" )
if /I "%Security%"=="1" (
set Security=2
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Security -------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash START %DATE%", 100, 12 "
echo.
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash START %DATE%", 100, 12 " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash START %DATE%", 100, 12
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Security OK ----------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash START %DATE%", 100, 12 " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%chkdsk%"=="1" (
set chkdsk=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| chkdsk ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% echo O^R | chkdsk c: /F /R /I "
echo.
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- echo O^R | chkdsk c: /F /R /I " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
echo O^R | chkdsk c: /F /R /I
if /I "%LOG%"=="1" ( echo " |- %TIME% --| chkdsk OK ------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS echo O^R | chkdsk c: /F /R /I " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%defrag%"=="1" (
set defrag=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| defrag ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait Defrag C: /U /V "
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Start /wait Defrag C: /U /V " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait Defrag C: /U /V
if /I "%LOG%"=="1" ( echo " |- %TIME% --| defrag OK ------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait Defrag C: /U /V " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%cleanmgr%"=="1" (
set cleanmgr=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| cleanmgr -------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait Cleanmgr /sagerun:65535 "
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Start /wait Cleanmgr /sagerun:65535 " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait Cleanmgr /sagerun:65535
if /I "%LOG%"=="1" ( echo " |- %TIME% --| cleanmgr OK ----------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait Cleanmgr /sagerun:65535 " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%DISM%"=="1" (
set DISM=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| DISM ------------------------------ | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait DISM.exe /Online /Cleanup-image /Restorehealth "
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Start /wait DISM.exe /Online /Cleanup-image /Restorehealth " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait DISM.exe /Online /Cleanup-image /Restorehealth
if /I "%LOG%"=="1" ( echo " |- %TIME% --| DISM OK --------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait DISM.exe /Online /Cleanup-image /Restorehealth " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%sfc%"=="1" (
set sfc=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| sfc ------------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait sfc /scannow "
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Start /wait sfc /scannow " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait sfc /scannow
if /I "%LOG%"=="1" ( echo " |- %TIME% --| sfc OK ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait sfc /scannow " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%findstr%"=="1" (
set findstr=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| findstr --------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% findstr /c:"[SR]" findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log >"Compuer Wash Log sfc.txt" " >> "%CD%\Computer Wash Log.txt" "
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log >"Compuer Wash Log sfc.txt" " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log >"Compuer Wash Log sfc.txt"
if /I "%LOG%"=="1" ( echo " |- %TIME% --| findstr OK ------------------------ | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS findstr /c:"[SR]" %windir%\Logs\CBS\CBS.log >"Compuer Wash Log sfc.txt" " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%Mrt%"=="1" (
set Mrt=0
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- start /wait MpCmdRun.exe -SignatureUpdate " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Defender -------------------------- | " >> "%CD%\Computer Wash Log.txt" )
cd\
c:
cd %ProgramFiles%\"Windows Defender"
echo|set /p="%SRESET% start /wait MpCmdRun.exe -SignatureUpdate "
timeout %t%
start /wait MpCmdRun.exe -SignatureUpdate

cd /D "%~dp0".
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS start /wait MpCmdRun.exe -SignatureUpdate " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- start /wait Defender.exe " >> "%CD%\Computer Wash Log.txt" )

cd\
c:
cd %ProgramFiles%\"Windows Defender"
echo|set /p="%SRESET% start /wait MpCmdRun.exe -Scan -ScanType -BootSectorScan "
timeout %t%
start /wait MpCmdRun.exe -Scan -ScanType -BootSectorScan

cd /D "%~dp0"
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS start /wait MpCmdRun.exe -Scan -ScanType -BootSectorScan " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- start /wait MpCmdRun.exe -Scan -ScanType 2 " >> "%CD%\Computer Wash Log.txt" )

cd\
c:
cd %ProgramFiles%\"Windows Defender"
echo|set /p="%SRESET% start /wait MpCmdRun.exe -Scan -ScanType 2 "
timeout %t%
start /wait MpCmdRun.exe -Scan -ScanType 2

cd /D "%~dp0"
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Defender OK ----------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS start /wait MpCmdRun.exe -Scan -ScanType 2 " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%pnpunattend%"=="1" (
set pnpunattend=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| pnpunattend ----------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait pnpunattend auditsystem /s /l "
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Start /wait pnpunattend auditsystem /s /l " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait pnpunattend auditsystem /s /l
if /I "%LOG%"=="1" ( echo " |- %TIME% --| pnpunattend OK -------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait pnpunattend auditsystem /s /l " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%mode%"=="1" (
set mode=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| mode ------------------------------ | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait mode "
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Start /wait mode " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait mode
if /I "%LOG%"=="1" ( echo " |- %TIME% --| mode OK --------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait mode " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%ipconfig%"=="1" (
set ipconfig=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| ipconfig -------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Interface ip reset " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait netsh interface ip reset "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait netsh interface ip reset " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait netsh interface ip reset
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait netsh interface ip reset " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait netsh winsock reset "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait netsh winsock reset " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait netsh winsock reset
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait netsh winsock reset " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait netsh advfirewall reset "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait netsh advfirewall reset " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait netsh advfirewall reset
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait netsh advfirewall reset " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait ipconfig /release "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: tart /wait ipconfig /releaset " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait ipconfig /release
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait ipconfig /release " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait ipconfig /flushdns "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait ipconfig /flushdns " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait ipconfig /flushdns
if /I "%LOG%"=="1" ( echo " |- %TIME% --| ipconfig OK ----------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait ipconfig /flushdns " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%mdsched%"=="1" (
set mdsched=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| mdsched --------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start mdsched                      | " >> "%CD%\Computer Wash Log.txt" )
mdsched
if /I "%LOG%"=="1" ( echo " |- %TIME% --| mdsched OK ------------------------ | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS mdsched                       | " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%bcdboot%"=="1" (
set bcdboot=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| bcdboot --------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait bcdboot c:\Windows " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait bcdboot c:\Windows
if /I "%LOG%"=="1" ( echo " |- %TIME% --| bcdboot OK ------------------------ | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait bcdboot c:\Windows " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%wsreset%"=="1" (
set wsreset=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| wsreset --------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait wsreset "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait wsreset " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait wsreset
if /I "%LOG%"=="1" ( echo " |- %TIME% --| wsreset OK ------------------------ | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait wsreset " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%rstrui%"=="1" (
set rstrui=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| rstrui ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait rstrui.exe "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait rstrui.exe " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait rstrui.exe
if /I "%LOG%"=="1" ( echo " |- %TIME% --| rstrui OK ------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait rstrui.exe " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%systemreset%"=="1" (
set systemreset=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| systemreset ----------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Start /wait rstrui.exe "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: Start /wait systemreset -cleanpc " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Start /wait systemreset -cleanpc
if /I "%LOG%"=="1" ( echo " |- %TIME% --| systemreset OK -------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Start /wait systemreset -cleanpc " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%del%"=="1" (
set del=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| del ------------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% del /S /F /Q %temp% "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: del /S /F /Q %temp% " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
del /S /F /Q %temp%
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS del /S /F /Q %temp% " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% del /S /F /Q %Windir%\Temp "
if /I "%LOG%"=="2" ( echo " **:**:**,** :: del /S /F /Q %Windir%\Temp " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
del /S /F /Q %Windir%\Temp
if /I "%LOG%"=="1" ( echo " |- %TIME% --| del OK ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS del /S /F /Q %Windir%\Temp " >> "%CD%\Computer Wash Log.txt" )
) else (
::
if /I "%chrome%"=="1" (
set chrome=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget install google.chrome        | " >> "%CD%\Computer Wash Log.txt" )
winget install google.chrome
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%Firefox%"=="1" (
set Firefox=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget install Mozilla.Firefox      | " >> "%CD%\Computer Wash Log.txt" )
winget install Mozilla.Firefox
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%VLC%"=="1" (
set VLC=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget install VideoLAN.VLC         | " >> "%CD%\Computer Wash Log.txt" )
winget install VideoLAN.VLC
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%Acrobat%"=="1" (
set Acrobat=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget install Adobe.Acrobat.Reader | " >> "%CD%\Computer Wash Log.txt" )
winget install Adobe.Acrobat.Reader.64-bit
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%7zip%"=="1" (
set 7zip=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget install 7zip.7zip            | " >> "%CD%\Computer Wash Log.txt" )
winget install 7zip.7zip
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%KeePass%"=="1" (
set KeePass=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget install DominikReichl.KeePass| " >> "%CD%\Computer Wash Log.txt" )
winget install DominikReichl.KeePass
if /I "%LOG%"=="1" ( echo " |- %TIME% --| winget ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%Security%"=="2" (
set Security=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Security -------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash END %DATE%", 100, 12 "
echo.
if /I "%LOG%"=="2" ( echo " %TIME% :: ---- Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash END %DATE%", 100, 12 " >> "%CD%\Computer Wash Log.txt" )
timeout %t%
Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash END %DATE%", 100, 12
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Security OK ----------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%LOG%"=="2" ( echo " **:**:**,** :: PASS Wmic.exe /Namespace:\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash END %DATE%", 100, 12 " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%Restart%"=="1" (
set Restart=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Restart --------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo|set /p="%SRESET% shutdown /r "
shutdown /r
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Restart OK ------------------------ | " >> "%CD%\Computer Wash Log.txt" )
pause
) else (
if /I "%Shutdown%"=="1" (
set Shutdown=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| shutdown -------------------------- | " >> "%CD%\Computer Wash Log.txt" )
shutdown /s
if /I "%LOG%"=="1" ( echo " |- %TIME% --| shutdown OK ----------------------- | " >> "%CD%\Computer Wash Log.txt" )
) else (
if /I "%LOG%"=="1" (
echo " |- %TIME% --| Prog  OK -------------------------- | " >> "%CD%\Computer Wash Log.txt"
echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt"  
)
if /I "%LOG%"=="1" ( echo " |- %TIME% --| END ------------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo %NFCGREEN% ----------- %SFCGREEN%END %NFCGREEN%----------
echo.
if /I "%LOG%"=="1" ( echo " |- %TIME% --| END OK ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
if /I "%Color%"=="0" ( 
color 07
echo|set /p="%SRESET% "
)
start notepad 'Computer Wash Log.txt'
timeout 20
goto:Var
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
if /I "%LOG%"=="1" ( echo " |----------------|                                     | " >> "%CD%\Computer Wash Log.txt" >> "%CD%\Computer Wash Log.txt" )
goto:Interface
:: - USB -
:USB
if /I "%LOG%"=="1" ( echo " |- %TIME% --| USB ------------------------------- | " >> "%CD%\Computer Wash Log.txt" )
:: "  ______________________________________________________  "
:: " /                                                      \ "
:: " |                  Computer Wash USB                   | "
:: " |______________________________________________________| "
:: " |                                                      | "
:: " |    https://computerwash.wixsite.com/computer-wash    | "
:: " |______________________________________________________| "
:: " |                                           |          | "
:: " |  Created : PastequeOsaure V 0.0           | 23/07/21 | "
:: " |___________________________________________|__________| "
:: " |                                           |          | "
:: " |    Edit by : PastequeOsaure V 0.6         | 04/02/23 | "
:: " |___________________________________________|__________| "
:: " |                                                      | "
:: " |    Version ?                                         | "
:: " |                                                      | "
::         set V=V 0.6 0
:: " \______________________________________________________/ "

:: - Varable base -
set Erreur=0
set Readonly=0
set clearreadonly=0

:: - START -
Mode Con Cols=58 Lines=24

:Menu
:: - Volume -
Mode Con Cols=100 Lines=60
echo|set /p="%SFCYELLOW%°______________________________________________________°"
echo.

echo|set /p="%SFCYELLOW%./                |%SRESET%  Computer Wash%NFCYELLOW% USB Protection       \"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  /----------\  %SFCYELLOW%|_____________________________________|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  | %SRESET%##   *** %SFCBLUE%|  %SFCYELLOW%|                                     |"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |----------|  %SFCYELLOW%|%SRESET%- Please select a volume type and    %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |          |  %SFCYELLOW%|%SRESET%  its identifier.                    %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |  %SRESET%/----\  %SFCBLUE%|  %SFCYELLOW%|%SFCYELLOW%_____________________________________%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |  %SRESET%|    |  %SFCBLUE%|  %SFCYELLOW%|%SFCYELLOW%                                     %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |  %SRESET%\----/  %SFCBLUE%|  %SFCYELLOW%|%SFCRED%- example : %SFCGREEN%select disk 0 %SFCRED% --------- %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  \----------/  %SFCYELLOW%|%SFCBLACK%-------------------------------------%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCYELLOW%________________%SFCYELLOW%|%SFCRED%- example : %SFCGREEN%select volume C %SFCRED%-------- %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLACK% -... . ..- ...-%SFCYELLOW%|%SFCYELLOW%_____________________________________%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLACK% . - .... ---   %SFCYELLOW%|%SFCYELLOW%                                     %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLACK% -- .- ...      %SFCYELLOW%|%SFCBLACK%|||||||||||||||||||||||||||||||||||||%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCYELLOW%________________%SFCYELLOW%|%SFCYELLOW%_____________________________________%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|                                                      %SFCYELLOW%|"
echo.

if /I "%langue%"=="0" (
echo|set /p="%SFCYELLOW%.|  %SFCCYAN%   Toute reproduction est strictement interdite.   %SFCYELLOW% | %SRESET%"
echo.
) else (
echo|set /p="%SFCYELLOW%.|  %SFCCYAN%     Any reproduction is strictly prohibited.      %SFCYELLOW% | %SRESET%"
echo.
)

echo|set /p="%SFCYELLOW%.\%SFCYELLOW%______________________________________________________%SFCYELLOW%/ %SRESET%"
echo.

if /I "%LOG%"=="1" ( echo " |- %TIME% --| USB 1/2 ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo.
start diskmgmt
echo list disk > "%CD%\Computer_Wash_DiskPart.txt"
echo list volume >> "%CD%\Computer_Wash_DiskPart.txt"
echo exit >> "%CD%\Computer_Wash_DiskPart.txt"
if /I "%COLOR%"=="0" ( color 07 )
echo %NFCYELLOW% please wait%SRESET% please wait%NFCYELLOW% please wait%SRESET% please wait . .. ...
diskpart /s Computer_Wash_DiskPart.txt > LOG.txt"
type LOG.txt
echo.
if /I "%COLOR%"=="0" ( 
color 07
set /p choix= %SRESET% Please type the command to execute : %SRESET%
) else (
set /p choix= %NFCCYAN% Please type the command to execute : %SRESET%
)
echo %choix% > "%CD%\Computer_Wash_DiskPart.txt"
if /I "%LOG%"=="1" ( echo " |- %TIME% --| USB choix " >> "%CD%\Computer Wash Log.txt" )

:: - START -
Mode Con Cols=58 Lines=26

echo|set /p="%SFCYELLOW%°______________________________________________________°"
echo.

echo|set /p="%SFCYELLOW%./                |%SRESET%  Computer Wash%NFCYELLOW% USB Protection       \"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  /----------\  %SFCYELLOW%|_____________________________________|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  | %SRESET%##   *** %SFCBLUE%|  %SFCYELLOW%|                                     |"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |----------|  %SFCYELLOW%|%SRESET%- In case you used select disk       %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |          |  %SFCYELLOW%|%SRESET%  please use attributes disk         %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |  %SRESET%/----\  %SFCBLUE%|  %SFCYELLOW%|%SRESET%  otherwise use attributes volume    %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |  %SRESET%|    |  %SFCBLUE%|  %SFCYELLOW%|%SFCBLACK%-------------------------------------%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  |  %SRESET%\----/  %SFCBLUE%|  %SFCYELLOW%|%SFCRED%- %SRESET%1) %SFCRED%attributes volume set readonly  %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLUE%  \----------/  %SFCYELLOW%|%SFCGREEN%- %SRESET%2) %SFCGREEN%attributes volume clear readonly%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCYELLOW%________________%SFCYELLOW%|%SFCBLACK%-------------------------------------%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLACK% -... . ..- ...-%SFCYELLOW%|%SFCRED%- %SRESET%3) %SFCRED%attributes disk set readonly -- %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLACK% . - .... ---   %SFCYELLOW%|%SFCGREEN%- %SRESET%4) %SFCGREEN%attributes disk clear readonly  %SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCBLACK% -- .- ...      %SFCYELLOW%|%SFCYELLOW%_____________________________________%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|%SFCYELLOW%________________%SFCYELLOW%|%SFCYELLOW%_____________________________________%SFCYELLOW%|"
echo.

echo|set /p="%SFCYELLOW%.|                                                      %SFCYELLOW%|"
echo.

if /I "%langue%"=="0" (
echo|set /p="%SFCYELLOW%.|  %SFCCYAN%   Toute reproduction est strictement interdite.   %SFCYELLOW% | %SRESET%"
echo.
) else (
echo|set /p="%SFCYELLOW%.|  %SFCCYAN%     Any reproduction is strictly prohibited.      %SFCYELLOW% | %SRESET%"
echo.
)

echo|set /p="%SFCYELLOW%.\%SFCYELLOW%______________________________________________________%SFCYELLOW%/ %SRESET%"
echo.
if /I "%LOG%"=="1" ( echo " |- %TIME% --| USB 2/2 ---------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo.
if /I "%COLOR%"=="0" ( 
color 07
set /p choix= %SRESET% Please type the command to execute 1 - 2 - 3 - 4 : %SRESET%
) else (
set /p choix= %NFCCYAN% Please type the command to execute 1 - 2 - 3 - 4 : %SRESET%
)
if /I "%choix%"=="1" (
echo attributes volume set readonly >> "%CD%\LOG.txt"
echo attributes volume set readonly >> "%CD%\Computer_Wash_DiskPart.txt"
goto:ProgramUSB
)
if /I "%choix%"=="2" (
echo attributes volume clear readonly >> "%CD%\LOG.txt"
echo attributes volume clear readonly >> "%CD%\Computer_Wash_DiskPart.txt"
goto:ProgramUSB
)
if /I "%choix%"=="3" (
echo attributes disk set readonly >> "%CD%\LOG.txt"
echo attributes disk set readonly >> "%CD%\Computer_Wash_DiskPart.txt"
goto:ProgramUSB
)
if /I "%choix%"=="4" (
echo attributes disk clear readonly >> "%CD%\LOG.txt"
echo attributes disk clear readonly >> "%CD%\Computer_Wash_DiskPart.txt"
goto:ProgramUSB
)

:: - ERREUR -
set Erreur=2
goto :Erreur

:ProgramUSB
echo exit >> "%CD%\Computer_Wash_DiskPart.txt"
diskpart /s Computer_Wash_DiskPart.txt >> "%CD%\LOG.txt"
type LOG.txt >> "%CD%\Computer Wash Log.txt"
del "%CD%\LOG.txt"
del "%CD%\Computer_Wash_DiskPart.txt"
if /I "%LOG%"=="1" ( echo " |- %TIME% --| USB OK ----------------------------- | " >> "%CD%\Computer Wash Log.txt" )
echo.
echo %NFCGREEN% ----------- %SFCGREEN%END %NFCGREEN%----------
echo.
pause
type LOG.txt
goto:Var

:: - ERROR -
:Erreur
if /I "%Erreur%"=="1" (
Mode Con Cols=63 Lines=19
) else (
Mode Con Cols=63 Lines=19
)
color c
echo.
echo "  ______________________________________________________  "
echo " /                |  ERROR                              \ "
echo " |  /----------\  |_____________________________________| "
echo " |  | &²   +@° |  |                                     | "
echo " |  |----------|  |   /--\ /---\ /---\ /-----\ /---\    | "
echo " |  |          |  |   |    |   | |   | | /-\ | |   |    | "
echo " |  |  /----\  |  |   |--\ \---/ \---/ | | | | \---/    | "
echo " |  |  |    |  |  |   |--/ |\    |\    | | | | |\       | "
echo " |  |  \----/  |  |   |    | \   | \   | \-/ | | \      | "
echo " |  \----------/  |   \--/ |  \  |  \  \-----/ |  \     | "
echo " |                |                                     | "
echo " |________________|_____________________________________| "
echo " |                                                      | "
if /I "%Erreur%"=="2" (
if /I "%langue%"=="0" (
echo " |     Erreur de saisie.                                | "
) else (
echo " |     Entry error.                                     | "
)
)
echo " \______________________________________________________/ "
echo.
type LOG.txt >> "%CD%\Computer Wash Log.txt"
del "%CD%\LOG.txt"
del "%CD%\Computer_Wash_DiskPart.txt"
if /I "%COLOR%"=="0" ( color 07 )
if /I "%Erreur%"=="1" (
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Erreur ----------------------------- | " >> "%CD%\Computer Wash Log.txt" )
Timeout %t%
goto :exit
)
if /I "%Erreur%"=="2" (
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Erreur ----------------------------- | " >> "%CD%\Computer Wash Log.txt" )
Timeout %t%
goto:Var
)
:: - Setup -
:Setup
:: vlc , chrome , adobe reader , unistal norton .. , 7zip , Windirstat.
goto:Interface

:: - HELP -
:Help
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Help ------------------------------ | " >> "%CD%\Computer Wash Log.txt" )
Mode Con Cols=150 Lines=170
cls
echo.
echo|set /p="%SRESET%  ______________________________           Computer Wash Ultimate V OK.6.4 "
echo.
echo|set /p="%SRESET% |\                             \                                                       ============================ "
echo.
echo|set /p="%SRESET% | \                             \          Edit by :: PastequeOsaure V OK.6.4          |       19/08/2023         | "
echo.
echo|set /p="%SRESET% |  \                             \         Created :: PastequeOsaure V 0.0 -> V OK.6.4 | 17/09/2019 -> 19/08/2023 | "                                          
echo.
echo|set /p="%SRESET% |   \_____________________________\                                                    ============================ "
echo.
echo|set /p="%SRESET% |   |                             |          ____________________________________________________________________________________  "
echo.
echo|set /p="%SRESET% |   |  | # V OK.6.4 # |      ***  |         /                                                                                    \ "
echo.
echo|set /p="%SRESET% |   |_____________________________|         | IF YOU HAVE PAID FOR THIS SOFTWARE, THEN YOU HAVE BEEN SCAMMED!                    | "
echo.
echo|set /p="%SRESET% |   |                             |         |------------------------------------------------------------------------------------| "
echo.
echo|set /p="%SRESET% |   |    _____________________    |         | Computer Wash is completely free.                                                  | "
echo.
echo|set /p="%SRESET% |   |   /                     \   |         |------------------------------------------------------------------------------------| "
echo.
echo|set /p="%SRESET% |   |   |                     |   |         | THE SOFTWARE IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND.                     | "
echo.
echo|set /p="%SRESET% |   |   |                     |   |         | THE AUTHORS OR COPYRIGHT HOLDERS SHALL NOT BE LIABLE FOR ANY DAMAGES OR OTHERWISE. | "
echo.
echo|set /p="%SRESET% |   |   |                     |   |         |------------------------------------------------------------------------------------| "
echo.
echo|set /p="%SRESET% |   |   |                     |   |         | USE THIS SOFTWARE AT YOUR OWN RISK!                                                | "
echo.
echo|set /p="%SRESET% |   |   |                     |   |         |------------------------------------------------------------------------------------| "
echo.
echo|set /p="%SRESET% |   |   |                     |   |         | Copyright © 2022 https://computerwash.wixsite.com/computer-wash                   | "
echo.
echo|set /p="%SRESET% |\  |   \_____________________/   |         \____________________________________________________________________________________/ "
echo.
echo|set /p="%SRESET% | \ |                             |       "  
echo.
echo|set /p="%SRESET%  \ \|_____________________________|      "   
echo.
echo|set /p="%SRESET%   \ |                             |     "
echo.
echo|set /p="%SRESET%    \|_____________________________|    "
echo.
echo.
echo|set /p="%SRESET% --- Computer Wash Help --- --- Computer Wash Help --- --- Computer Wash Help --- --- Computer Wash Help --- "
echo.
echo|set /p="%SRESET%  "
echo.
echo|set /p="%SRESET%     A  - Automatic "
echo.
echo|set /p="%SRESET%   "
echo.
echo|set /p="%SRESET%      A1  - Daily Wash                        - DISM sfc "
echo.
echo|set /p="%SRESET%      A2  - Maintenance Wash                  - DISM sfc del "
echo.
echo|set /p="%SRESET%      A3  - Washing Repair                    - chkdsk cleanmgr DISM sfc del "
echo.
echo|set /p="%SRESET%      A4  - Last Resort Wash                  - chkdsk cleanmgr DISM sfc findstr defender ipconfig wsreset del "
echo.
echo.
echo|set /p="%SRESET%     S  - Specific "
echo.
echo.
echo|set /p="%SRESET%      S1  - Antivirus (Auto mode)             - defender "
echo.
echo|set /p="%SRESET%      S2  - Dignostic RAM                     - mdsched "
echo.
echo|set /p="%SRESET%      S3  - Maintenance disk c                - chkdsk "
echo.
echo|set /p="%SRESET%      S4  - Disk Cleanup                      - cleanmgr "
echo.
echo|set /p="%SRESET%      S5  - Start repair W                    - bcdboot "
echo.
echo|set /p="%SRESET%      S6  - Restore system                    - rstrui "
echo.
echo|set /p="%SRESET%      S7  - Reset the ip interface            - ipconfig "
echo.
echo|set /p="%SRESET%      S8  - Reset windows                     - systemreset "
echo.
echo|set /p="%SRESET%      S9  - Reset WS cache                    - wsreset "
echo.
echo|set /p="%SRESET%      S10 - Delete temporary files            - del "
echo.
echo|set /p="%SRESET%      S11 - Update driver sys et COM          - pnpunattend mode "
echo.
echo|set /p="%SRESET%      S12 - Verificaton system + log          - DISM sfc findstr "
echo.
echo|set /p="%SRESET%      S13 - Windows Recovery                  - shutdown.exe /r /o "
echo.
echo|set /p="%SRESET%      USB - Protec USB                        - diskpart "
echo.
echo|set /p="%SRESET%      SETUP - SETUP                           - chrome, Firefox, VLC, Acrobat, 7zip, KeePass"
echo.
echo|set /p="%SRESET%            -                                 - Winget
echo.
echo.
echo|set /p="%SRESET%     C  - Cmustomize "
echo.
echo.
echo|set /p="%SRESET%      C1  - Check and repair drive C          - chkdsk "
echo.
echo|set /p="%SRESET%      C2  - Disk optimization                 - cleanmgr "
echo.
echo|set /p="%SRESET%      C3  - Repair system                     - DISM sfc findstr "
echo.
echo|set /p="%SRESET%      C4  - Antivirus (Auto mode)             - defender "
echo.
echo|set /p="%SRESET%      C5  - sys and COM driver                - pnpunattend mode "
echo.
echo|set /p="%SRESET%      C6  - Reset the ip interface            - ipconfig "
echo.
echo|set /p="%SRESET%      C7  - Repair boot files                 - bcdboot "
echo.
echo|set /p="%SRESET%      C8  - Reset Windows Store               - wsreset "
echo.
echo|set /p="%SRESET%      C9  - Delete temporary files            - del "
echo.
echo.
echo|set /p="%SRESET%     O  - Other "
echo.
echo.
echo|set /p="%SRESET%      O1  - Copy protection                   - verify on/off "
echo.
echo|set /p="%SRESET%      O2  - Restart                           - Restart "
echo.
echo|set /p="%SRESET%      O3  - Shutdown                          - Shutdown "
echo.
echo|set /p="%SRESET%      O4  - security                          - Security "
echo.
echo|set /p="%SRESET%      O5  - System Info                       - systeminfo | find /i "Microsoft windows" "
echo.
echo.
echo|set /p="%SRESET%      COLOR  - COLOR                           - Color "
echo.
echo|set /p="%SRESET%      HELP  - HELP                             - Help "
echo.
echo.
echo|set /p="%SRESET%     E  - Exit "
echo.
echo.
echo|set /p="%SRESET%      E1  - Exit --------------------         - exit "
echo.
echo|set /p="%SRESET%      E2  - Shutdown ----------------         - shutdown /f "
echo.
echo.
echo|set /p="%SRESET%     L  - Link "
echo.
echo.
echo|set /p="%SRESET%      L1  - Computer Wash                     - start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private  https://computerwash.wixsite.com/computer-wash "
echo.
echo.
echo|set /p="%SRESET%      L2  - Computer Wash Discord             - start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private  https://computerwash.wixsite.com/computer-wash/dev "
echo.
echo.
echo|set /p="%SRESET% --- Computer Wash Help --- --- Computer Wash Help --- --- Computer Wash Help --- --- Computer Wash Help --- "
echo.
echo.
echo|set /p="%SRESET% == Computer Wash Legend + Algorithm"
echo.
echo|set /p="%SRESET% ||"
echo.
echo|set /p="%SRESET% || Security    = Wmic.exe /Namespace|\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash START 12/07/2022", 100, 12 "
echo.
echo|set /p="%SRESET% \/ chkdsk      = echo OR | chkdsk c| /F /R /I "
echo.
echo|set /p="%SRESET% || defrag      = Start /wait Defrag C| /U /V "
echo.
echo|set /p="%SRESET% || cleanmgr    = Start /wait Cleanmgr /sagerun|65535 "
echo.
echo|set /p="%SRESET% \/ DISM        = Start /wait DISM.exe /Online /Cleanup-image /Restorehealth "
echo.
echo|set /p="%SRESET% || sfc         = Start /wait sfc /scannow "
echo.
echo|set /p="%SRESET% || findstr     = findstr /c|"[SR]" C:\Windows\Logs\CBS\CBS.log "
echo.
echo|set /p="%SRESET% \/ defender    = start /wait MpCmdRun.exe -SignatureUpdate "
echo.
echo|set /p="%SRESET% || defender    = start /wait MpCmdRun.exe -Scan -ScanType -BootSectorScan "
echo.
echo|set /p="%SRESET% || defender    = start /wait MpCmdRun.exe -Scan -ScanType 2 "
echo.
echo|set /p="%SRESET% \/ pnpunattend = Start /wait pnpunattend auditsystem /s /l "
echo.
echo|set /p="%SRESET% || mode        = Start /wait mode "
echo.
echo|set /p="%SRESET% || ipconfig    = Start /wait netsh interface ip reset "
echo.
echo|set /p="%SRESET% \/ ipconfig    = Start /wait netsh winsock reset "
echo.
echo|set /p="%SRESET% || ipconfig    = Start /wait netsh advfirewall reset "
echo.
echo|set /p="%SRESET% || ipconfig    = Start /wait ipconfig /release "
echo.
echo|set /p="%SRESET% \/ ipconfig    = Start /wait ipconfig /flushdns "
echo.
echo|set /p="%SRESET% || mdsched     = mdsched "
echo.
echo|set /p="%SRESET% || bcdboot     = Start /wait bcdboot c|\Windows "
echo.
echo|set /p="%SRESET% \/ wsreset     = Start /wait wsreset "
echo.
echo|set /p="%SRESET% || rstrui      = Start /wait rstrui.exe "
echo.
echo|set /p="%SRESET% || systemreset = Start /wait systemreset -cleanpc "
echo.
echo|set /p="%SRESET% \/ del         = del /S /F /Q C:\Users\PASTQU~1\AppData\Local\Temp "
echo.
echo|set /p="%SRESET% || del         = del /S /F /Q C:\Windows\Temp "
echo.
echo|set /p="%SRESET% || chrome      = winget install google.chrome
echo.
echo|set /p="%SRESET% \/ Firefox     = winget install Mozilla.Firefox
echo.
echo|set /p="%SRESET% || VLC         = winget install VideoLAN.VLC
echo.
echo|set /p="%SRESET% || Acrobat     = winget install Adobe.Acrobat.Reader
echo.
echo|set /p="%SRESET% \/ 7zip        = winget install 7zip.7zip
echo.
echo|set /p="%SRESET% || KeePass     = winget install DominikReichl.KeePass
echo.
echo|set /p="%SRESET% || Security    = Wmic.exe /Namespace|\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash END 12/07/2022", 100, 12 "
echo.
echo|set /p="%SRESET% \/ Restart     = shutdown /r "
echo.
echo|set /p="%SRESET% -- End"
echo.
echo.
echo|set /p="%SRESET% --- Computer Wash Help --- --- Computer Wash Help --- --- Computer Wash Help --- --- Computer Wash Help --- "
echo.
echo.
echo|set /p="%SRESET% == USB Algorithm"
echo.
echo|set /p="%SRESET% ||"
echo.
echo|set /p="%SRESET% ||"
echo.
echo|set /p="%SRESET% \/ start diskmgmt"
echo.
echo|set /p="%SRESET% || diskpart    = echo list disk > "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt" "
echo.
echo|set /p="%SRESET% || diskpart    = echo list volume >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt" "
echo.
echo|set /p="%SRESET% \/ diskpart    = echo exit >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt" "
echo.
echo|set /p="%SRESET% || diskpart    = type LOG.txt "
echo.
echo|set /p="%SRESET% || choix       = select disk XX "
echo.
echo|set /p="%SRESET% \/ choix       = select volume XX "
echo.
echo|set /p="%SRESET% || diskpart    = echo attributes volume set readonly >> "C:\Users\PASTQU~1\Desktop\LOG.txt" "
echo.
echo|set /p="%SRESET% || diskpart    = echo attributes volume set readonly >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt" "
echo.
echo|set /p="%SRESET% || diskpart    = echo attributes volume clear readonly >> "C:\Users\PASTQU~1\Desktop\LOG.txt" "
echo.
echo|set /p="%SRESET% \/ diskpart    = echo attributes volume clear readonly >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt" "
echo.
echo|set /p="%SRESET% || diskpart    = echo attributes disk set readonly >> "C:\Users\PASTQU~1\Desktop\LOG.txt" "
echo.
echo|set /p="%SRESET% || diskpart    = echo attributes disk set readonly >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt" "
echo.
echo|set /p="%SRESET% \/ diskpart    = echo attributes disk clear readonly >> "C:\Users\PASTQU~1\Desktop\LOG.txt" "
echo.
echo|set /p="%SRESET% || diskpart    = echo attributes disk clear readonly >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt" "
echo.
echo|set /p="%SRESET% || diskpart    = echo exit >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt" "
echo.
echo|set /p="%SRESET% \/ diskpart    = diskpart /s Computer_Wash_DiskPart.txt >> "C:\Users\PASTQU~1\Desktop\LOG.txt" "
echo.
echo|set /p="%SRESET% || type LOG.txt "
echo.
echo|set /p="%SRESET% -- END"
echo.
echo.
echo|set /p="%SRESET% --- Computer Wash Help --- --- Computer Wash Help --- --- Computer Wash Help --- --- Computer Wash Help --- "
pause
set Help=0
if /I "%LOG%"=="1" ( echo " |- %TIME% --| Help OK --------------------------- | " >> "%CD%\Computer Wash Log.txt" )
goto:Var

:: ----- FIN EXIT -----
:exit
if /I "%LOG%"=="1" ( echo " \______________________________________________________/ "  >> "%CD%\Computer Wash Log.txt" )
color 07
exit
