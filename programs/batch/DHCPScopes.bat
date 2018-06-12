@ECHO OFF
REM Obtains all active DHCP Scopes authorized in the domain
REM Josh Murray V. 6.8.18

SETLOCAL ENABLEDELAYEDEXPANSION

ECHO dhcp > script2.txt
ECHO set file open dhcp.txt >> script2.txt

REM Import DHCP Servers
ECHO dhcp > script1.txt
ECHO set file open temp.txt >> script1.txt
ECHO show server >> script1.txt
ECHO exit >> script1.txt
NETSH -f script1.txt >nul

REM Check if servers are reachable
CLS
ECHO Scanning Servers
ECHO Server not responding (If name is Address, there is a blank entry in AD) :> error.log

FOR /F "tokens=2 delims=[]" %%A in (temp.txt) DO (
	PING -n 2 %%A | FIND "TTL=" >NUL
	IF !ERRORLEVEL! NEQ 0 (
		ECHO Server unreachable %%A >> error.log
	) ELSE (
		ECHO server \\%%A >> script2.txt
		ECHO show scope >> script2.txt
	)
) 

ECHO exit >> script2.txt

REM Get scopes
CLS
ECHO Enumerating Scopes
NETSH -f script2.txt >NUL

REM Cleanup Logs
TYPE dhcp.txt | FIND "Active" > Scopes.txt
ECHO ******************************>> error.log 
ECHO DHCP Service may be disabled: >> error.log 
TYPE dhcp.txt | FIND "Unable to determine" >> error.log

DEL temp.txt
DEL script*

CLS
ECHO Complete, Check Scopes.txt for DHCP scopes and error.log for failed connections.
ENDLOCAL
PAUSE
