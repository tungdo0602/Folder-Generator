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
mkdir "\\?\%cd%\%NAMEG%"
color 2
echo Done!
pause
exit

:DELETEF
cls
rd "\\?\%cd%\%NAMED%"
color 2
echo Done!
pause
exit

:EXIT
exit

:FOLDERDQ
echo [1] Current Path
echo [2] Custom Path
echo [3] Force Mode
SET /P Del=Your Choose:
IF /I "%Del%" EQU "1" GOTO DELETEF
IF /I "%Del%" EQU "2" GOTO CUSTOMFD
IF /I "%Del%" EQU "3" GOTO FORCE
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
IF /I "%FCGQ%" NEQ "3" GOTO EXIT

:FORCE
SET /P FDPATH=Path: 
SET /P FDFNAME=Name Of The Folder: 
goto forcedelete

:forcedelete
cls
rmdir "\\.\%FDPATH%\%FDFNAME%" /S /Q
color 2
echo Done!
pause
exit

:DELETEF2
cls
rd "\\?\%DPATH%\%DFNAME%"
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
mkdir "\\?\%FPATH%\%CFGNAME%"
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
