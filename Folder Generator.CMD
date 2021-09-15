::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MNXiuFLQI5/rHy++UqVkSRN4cdYuJ5pKBLOQW+AXDcJgoxHtOl9lCCQNdHg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 1
echo ███████╗░█████╗░██╗░░░░░██████╗░███████╗██████╗░
echo ██╔════╝██╔══██╗██║░░░░░██╔══██╗██╔════╝██╔══██╗
echo █████╗░░██║░░██║██║░░░░░██║░░██║█████╗░░██████╔╝
echo ██╔══╝░░██║░░██║██║░░░░░██║░░██║██╔══╝░░██╔══██╗
echo ██║░░░░░╚█████╔╝███████╗██████╔╝███████╗██║░░██║
echo ╚═╝░░░░░░╚════╝░╚══════╝╚═════╝░╚══════╝╚═╝░░╚═╝

echo ░██████╗░███████╗███╗░░██╗███████╗██████╗░░█████╗░████████╗░█████╗░██████╗░
echo ██╔════╝░██╔════╝████╗░██║██╔════╝██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██╔══██╗
echo ██║░░██╗░█████╗░░██╔██╗██║█████╗░░██████╔╝███████║░░░██║░░░██║░░██║██████╔╝
echo ██║░░╚██╗██╔══╝░░██║╚████║██╔══╝░░██╔══██╗██╔══██║░░░██║░░░██║░░██║██╔══██╗
echo ╚██████╔╝███████╗██║░╚███║███████╗██║░░██║██║░░██║░░░██║░░░╚█████╔╝██║░░██║
echo ░╚═════╝░╚══════╝╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝
timeout /T 1 /nobreak > nul
goto choose1

:choose1
echo [1] Generator Folder
echo [2] Delete Folder
echo [3] EXIT
SET /P CHOOSE=Your Choose: 
IF /I "%CHOOSE%" EQU "1" GOTO FOLDERGQ
IF /I "%CHOOSE%" EQU "2" GOTO FOLDERDQ
IF /I "%CHOOSE%" NEQ "1" GOTO EXIT
IF /I "%CHOOSE%" NEQ "2" GOTO EXIT
IF /I "%CHOOSE%" NEQ "3" GOTO EXIT
IF /I "%CHOOSE%" EQU "3" GOTO EXIT


:GENERATOR
cls
mkdir \\?\%cd%\%NAMEG%
color 2
echo Done!
pause
exit

:DELETEF
cls
rd \\?\%cd%\%NAMED%
color 2
echo Done!
pause
exit

:EXIT
exit

:FOLDERDQ
echo [1] Current Path
echo [2] Custom Path
SET /P Del=Your Choose:
IF /I "%Del%" EQU "1" GOTO DELETEF
IF /I "%Del%" EQU "2" GOTO CUSTOMFD
IF /I "%Del%" NEQ "1" GOTO EXIT
IF /I "%Del%" NEQ "2" GOTO EXIT

:FOLDERGQ
echo [1] Current Path
echo [2] Custom Path
SET /P FCGQ=Your Choose: 
IF /I "%FCGQ%" EQU "1" GOTO FOLDERGEN
IF /I "%FCGQ%" EQU "2" GOTO CUSTOMFG
IF /I "%FCGQ%" NEQ "1" GOTO EXIT
IF /I "%FCGQ%" NEQ "2" GOTO EXIT

:DELETEF2
cls
rd \\?\%DPATH%\%DFNAME%
color 2
echo Done!
pause
exit

:CUSTOMFG
SET /P FPATH=Path: 
SET /P CFGNAME=Name Of The Folder:
goto GENERATOR2

:CUSTOMFD
SET /P DPATH=Path: 
SET /P DFNAME=Name Of The Folder:
goto DELETEF2

:GENERATOR2
cls
mkdir \\?\%FPATH%\%CFGNAME%
color 2
echo Done!
pause
exit

:FOLDERGEN
SET /P NAMEG=Name Of The Folder: 
goto GENERATOR

:FOLDERDELETE
SET /P NAMED=Name Of The Folder: 
goto DELETEF