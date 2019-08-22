:: turn of echo
@echo off

:: Welcome message
echo Welcome! 
echo %0 backs up a given source to a target folder using unison, i.e. it updates target folder with contents of source folder.
echo Written by Johannes Elias, joheli@gmx.net

:: Location of unison
set UX="C:\Program Files\unison\unison.exe"

:: Check: Have two arguments been supplied?
if "%~1"=="" goto argumentmissing
if "%~2"=="" goto argumentmissing

:: Relay source (argument 1) and target (argument 2) directories
set SRCDIR=%1
set TGTDIR=%2

:: Check: Do arguments correspond to exisiting directories?
if not exist "%SRCDIR%\*" goto argumentbad
if not exist "%TGTDIR%\*" goto argumentbad

:: Run unison
%UX% %SRCDIR% %TGTDIR% -force %SRCDIR% -fastcheck true -batch

:: Put a text file into target directory containing the timestamp of last update.
echo Last update performed on %DATE% at %TIME% > %2\update%DATE:~6,4%%DATE:~3,2%%DATE:~0,2%.txt

:: All good, sign off with a message
echo %TGTDIR% was successfully updated with contents of %SRCDIR%.
goto:eof

:argumentmissing
echo Please supply two arguments!
goto help

:argumentbad
echo Arguments do not seem to correspond to directories!
goto help

:help
echo Usage: %0 [Source directory] [Target directory]
echo Source directory should designate directory you wish to mirror.
echo Target directory should designate directory which is updated (i.e. to which source directory is backed up).