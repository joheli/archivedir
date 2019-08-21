:: turn of echo
@echo off

:: Welcome message
echo Welcome! %0 creates a 7z-compressed archive of a given directory.
echo Written by Johannes Elias, joheli@gmx.net

:: Location of 7zip
set CX="C:\Program Files\7-Zip\7z.exe"

:: Check: Have two arguments been supplied?
if "%~1"=="" goto argumentmissing
if "%~2"=="" goto argumentmissing

:: Relay source (argument 1) and target (argument 2) directories
set SRCDIR=%1
set TGTDIR=%2

:: Check: Do arguments correspond to exisiting directories?
if not exist "%SRCDIR%\*" goto argumentbad
if not exist "%TGTDIR%\*" goto argumentbad

:: Extract archive name from source directory
for %%I in ("%SRCDIR%") do set ARCNAME=%%~nxI

:: Create datestamp to attach to compressed archive
set DTSTR=%date:~6,4%%date:~3,2%%date:~0,2%

:: Set name of compressed archive
set TGTFILE=%TGTDIR%\%ARCNAME%%DTSTR%.7z

:: Create compressed archive
%CX% a %TGTFILE% %SRCDIR%

:: All good, sign off with a message
echo Compressed file %TGTFILE% was successfully created.
goto:eof

:argumentmissing
echo Please supply two arguments!
goto help

:argumentbad
echo Arguments do not seem to correspond to directories!
goto help

:help
echo Usage: %0 [Source directory] [Target directory]
echo Source directory should designate directory you wish to archive.
echo Target directory should designate directory into which compressed archive is put.