@echo off
title Text Edit
:MAIN
echo Press N to create new text.
echo Press E to edit text.
set/p choice=
if %choice% == n goto new
if %choice% == e goto edit
:new
cls
set /p name=Name-
echo %name%.txt
edit %name%.txt
:edit
set /p file=File to edit-
cscript.exe rep.vbs %file%
set /p input=
echo %input% >%file%

