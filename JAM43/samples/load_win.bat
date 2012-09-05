@echo off
REM This script can be used to sideload more than one BAR file at the same time
REM Dependencies: BlackBerry 10 WebWorks SDK
SET tools=C:\Progra~1\Resear~1\BLACKB~1.8\bbwp\dependencies\tools\bin
if [%1]==[] (
	echo Syntax is "loadApps <device address> <device password>"
	exit /B 1
)
for %%x in (*.bar) do (
	echo Installing %%x...
	call "%tools%\blackberry-deploy.bat" -package "%%x/" -device %1 -installApp -password %2 > output.txt
	FOR /F %%t IN (output.txt) DO (
		echo %%t
		
	)
	echo Error level: %ERRORLEVEL%
	echo.
)