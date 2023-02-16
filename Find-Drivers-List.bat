@ ECHO OFF
COLOR 1F
ECHO.
ECHO     Creating Drivers list.
TIMEOUT 2 > NUL
ECHO     Writing...
dism /online /get-drivers /format:table > %~dp0\drivers.txt
TIMEOUT 6 > NUL


REM     To remove Drivers, run command: pnputil.exe -d oemxxx.inf