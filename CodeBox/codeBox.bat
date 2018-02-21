title codeBox.exe
prompt Command:
cls
@echo off
:HELLO
echo Hello!
pause >nul
goto :MAIN
:MAIN
set "filename="
set "dir="
set "command="
set "problem="
set "answer="
cls
echo What can I do for you? Type in your commmand! (Type "help" to display a list of every command available.)
set /p command=
if %command%==type (
goto :TYPEFILENAME
)
if %command%==help (
goto :HELPLIST
)
if %command%==open (
goto :FINDDIR
)
if %command%==calc (
goto :CALC
)
if %command%==cmd (
goto :CMD
)
if %command%==dirs (
goto :DIRSFILE
)
pause >nul
:HELPLIST
cls
echo ---------------------------------------------------------
echo Help: Page 1/1
echo Command ^| What it does
echo help    ^| displays this page
echo type    ^| types a file
echo open    ^| opens a directory
echo calc    ^| opens a calculator 
echo cmd     ^| opens the normal cmd
echo ---------------------------------------------------------
pause >nul
goto :MAIN
:DIRSFILE
cls
type C:\Program Files\CodeBox\User Files\dirs.txt
pause >nul
goto :MAIN
:CMD
cls
start cmd.exe
cls
echo Hit any key to continue...
pause >nul
goto :MAIN
:CALC
cls
echo Opening calculator!
start calc.exe
pause >nul
goto :MAIN
:FINDDIR
cls
echo What directory do you want to open?
set /p dir=
if exist %dir% (
%SystemRoot%\explorer.exe %dir%
goto :MAIN
)
else (
goto :ERROR
)
:TYPEFILENAME
cls
echo What file would you like to type?
set /p filename=
if exist %filename% (
goto :TYPE
)
:TYPE
cls
echo Here you go:
pause >nul
cls
type %filename%
pause >nul
goto :MAIN
:ERROR
cls
echo Sorry, you did something wrong, hit a key to type a new command!
pause >nul
goto :MAIN