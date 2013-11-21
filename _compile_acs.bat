@echo off
setlocal enableextensions enabledelayedexpansion
set PATH=.\membrance2-compilers\acc
set ACCPATH=.\membrance2-compilers\acc
set SRC=.\membrance2-common\scripts
set OBJ=.\membrance2-common\acs
set LOGDIR=.\membrance2-compilers\acc\logs
set SCRIPTFILE1=FULLHP
set SCRIPTFILE2=SCUBELIB
goto prompt

:prompt
echo --------------------------------
echo Welcome, %USERNAME%
echo --------------------------------
echo ACS Files Compiler
echo --------------------------------
echo Key 1. %SCRIPTFILE1%
echo Key 2. %SCRIPTFILE2%
echo Key N. Exit
echo --------------------------------
set /p choice=Choice the number of file to compile it: 
if "%choice%"=="" goto end
if "%choice%"=="1" goto compile1
if "%choice%"=="2" goto compile2
if "%choice%"=="N" goto end
goto end

:compile1
acc -i %ACCPATH% %SRC%\%SCRIPTFILE1%.DPT %OBJ%\%SCRIPTFILE1%.O -d%LOGDIR%\_ACC_%SCRIPTFILE1%.LOG
goto end

:compile2
acc -i %ACCPATH% %SRC%\%SCRIPTFILE2%.DPT %OBJ%\%SCRIPTFILE2%.O -d%LOGDIR%\_ACC_%SCRIPTFILE2%.LOG
goto end

:end
cls
echo Press ENTER key for exit.
pause>nul
exit