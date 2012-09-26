@echo off
REM This script can be used to sideload a BAR file
REM Dependencies: BlackBerry 10 WebWorks SDK v 1.0.2.9
SET tools=C:\Progra~1\Resear~1\BLACKB~2.9\dependencies\tools\bin

IF "%1" == "" GOTO MISSINGPARAMS
IF "%2" == "" GOTO MISSINGPARAMS
IF "%3" == "" GOTO MISSINGPARAMS

"%tools%\blackberry-deploy.bat" -package %1 -device %2 -installApp -password %3

:MISSINGPARAMS
ECHO Missing parameters.  Correct usage: load.bat package-name device-ip device-pwd
