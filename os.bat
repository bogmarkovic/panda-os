@echo off
color ac
:os
echo Choose app:
echo (1) Text editor
echo (2) Text encryptor
echo (3) PC Cleaner
echo (4) What's your IP
echo (5) Fix your IP
echo (6) Calculator
echo (7) System info
echo (8) Task manager
echo (9) Configuration
echo (10) Text decryptor
echo (11) Antivirus
echo (12) Proxy toggle on-off
echo (13) Monopoly
echo (14) ASCII converter
echo (15) E-Mail sender
echo (16) Time shower
echo (17) Text-to-speech
echo (18) Decimal converter
echo (19) Binary converter

set/p apps=
if %apps% == 1 start textedit.bat
if %apps% == 2 start textencrypt.bat
if %apps% == 3 start pccleaner.bat
if %apps% == 4 start whatsip.bat
if %apps% == 5 start fixip.bat
if %apps% == 6 start calculator.bat
if %apps% == 7 start systeminfo.bat
if %apps% == 8 start Task-manager.bat
if %apps% == 9 start Msconfig.bat
if %apps% == 10 start textdecrypt.bat
if %apps% == 11 start OwnCleaner.bat
if %apps% == 12 start setproxy.vbs
if %apps% == 13 start Monopoly.bat
if %apps% == 14 start AsciiConvert.bat
if %apps% == 15 goto emailsend
if %apps% == 16 start time.bat
if %apps% == 17 start texttospeech.bat
if %apps% == 18 start decimalconvert.bat
if %apps% == 19 start binaryconverter.bat
cls
goto os
:emailsend
start emailsenderror.vbs
echo Do you want to leave from E-Mail sender?(y/n)
set/p leaveemail=
if %leaveemail% == y goto os
if %leaveemail% == n start emailsender.sh