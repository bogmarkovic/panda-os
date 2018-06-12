@echo off
ipconfig >> ip.txt
ping www.google.com >> networkresult.txt
echo Do you want to fix IP? (y/n)
set/p fixip=
if %fixip% == y start fixip.bat
if %fixip% == n exit