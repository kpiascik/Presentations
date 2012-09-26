@echo off
REM This script can be used to sideload more than one BAR file at the same time
REM Dependencies: BlackBerry 10 WebWorks SDK
SET tools=C:\Progra~1\Resear~1\BLACKB~2.9\dependencies\tools\bin

"%tools%\blackberry-deploy.bat" -package %1 -device %2 -installApp -password %3
