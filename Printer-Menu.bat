@ ECHO OFF
COLOR 0B
:TOP
CLS

title NBC 12 - PRINTER MENU

:MENU
CLS
echo ===============================================
echo        GGILES MAY 31 2018
echo        (c) GAVIN GILES 2018
echo ===============================================
ECHO.	
ECHO.
ECHO	SELECT OPERATION:
ECHO.
ECHO	[1] PRINTER 1 - Mail Room
ECHO	[2] PRINTER 2 - 
ECHO	[3] PRINTER 3 - 
ECHO	[4] PRINTER 4 - 
ECHO	[5] PRINTER 5 - 
ECHO	[6] PRINTER 6 - 
ECHO	[7] PRINTER 7 - 
ECHO	[8] PRINTER 8 - 
ECHO	[9] PRINTER 9 - 
 
ECHO	[R] Return to Splash Screen
ECHO	[X] Exit
ECHO.

SET CHOICE=
SET /p CHOICE=Select Operation to Perform: 
IF /i {%CHOICE%}=={1} (GOTO :PRINTER1)
IF /i {%CHOICE%}=={2} (GOTO :PRINTER2)
IF /i {%CHOICE%}=={3} (GOTO :PRINTER3)
IF /i {%CHOICE%}=={4} (GOTO :PRINTER4)
IF /i {%CHOICE%}=={5} (GOTO :PRINTER5)
IF /i {%CHOICE%}=={6} (GOTO :PRINTER6)
IF /i {%CHOICE%}=={7} (GOTO :PRINTER7)
IF /i {%CHOICE%}=={8} (GOTO :PRINTER8)
IF /i {%CHOICE%}=={9} (GOTO :PRINTER9)

IF /i {%CHOICE%}=={R} (GOTO :TOP)
IF /i {%CHOICE%}=={X} (GOTO :END)

ECHO.
ECHO "%CHOICE%" is not valid...please try again

PAUSE
GOTO MENU 

:PRINTER1
ECHO  Add printer %PRINTER1%
rundll32 printui.dll,PrintUIEntry /in /n "\\%SERVER%\PRINTER1"
TIMEOUT 6 > NUL

goto TOP
:PRINTER2
ECHO  Add printer %PRINTER2%
rundll32 printui.dll,PrintUIEntry /in /n "\\%SERVER%\PRINTER2"
TIMEOUT 6 > NUL

goto TOP
:PRINTER3
ECHO  Add printer %PRINTER3%
rundll32 printui.dll,PrintUIEntry /in /n "\\%SERVER%\PRINTER3"
TIMEOUT 6 > NUL

goto TOP
:PRINTER4
ECHO  Add printer %PRINTER4%
rundll32 printui.dll,PrintUIEntry /in /n "\\%SERVER%\PRINTER4"
TIMEOUT 6 > NUL

goto TOP
:PRINTER5
ECHO  Add printer %PRINTER5%
rundll32 printui.dll,PrintUIEntry /in /n "\\%SERVER%\PRINTER5"
TIMEOUT 6 > NUL

goto TOP

:exit

:END