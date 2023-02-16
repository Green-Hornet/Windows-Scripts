@ ECHO OFF
COLOR 1F
SET "fileserver=10.1.1.13"
SET "HOME=\\%fileserver%\redirected folders\"
SET "CHROME=%LOCALAPPDATA%\Google\Chrome\User Data\Default"

ECHO Backing up Chrome BookMarks
Timeout 2 > NUL
:10
xcopy "%CHROME%\Bookmarks" "%HOME%\%USERNAME%\" /Y
EXPLORER "%HOME%"

:20
TIMEOUT 7 > NUL