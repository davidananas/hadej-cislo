echo off
cls
set cislo=%random%
title game
prompt odpoved$g
echo hadej cislo
:input
set /p "odpoved=>"
if not %odpoved% == %cislo% goto jin
if %odpoved% == %cislo% goto spravne
:jin
if %odpoved% gtr %cislo% goto mensi
if %odpoved% lss %cislo% goto vetsi
:mensi
cls
echo mensi
goto input
:vetsi
cls
echo vetsi
goto input
:spravne
cls
echo
echo -------------------------
echo   Super dohral jsi hru
echo    cislo bylo %cislo%
echo -------------------------
pause
