@ ECHO OFF
sc \\%computername% config remoteregistry start= auto
TIMEOUT 3 > NUL
ECHO.
ECHO     Starting remote registry
sc \\%computername% start remoteregistry

TIMEOUT 3 > NUL
