@echo off
cls
ipconfig /release
ipconfig /renew
ipconfig /registerdns
echo Do you want to show your new IP?(y/n)
set/p shownewip=
if %shownewip% == y start whatsip.bat
if %shownewip% == n exit
