@echo off
cls
title pc quick clean
echo WARNING: this file will delete files if you contiue
pause
cd /d %temp%
del *.*
cd low
del *.*