@ ECHO OFF
COLOR 0B
:TOP
CLS

title GAVIN GILES WinPE for 2017 Rev. 4.4.2017

:MENU
CLS
echo ===============================================
echo        GGILES x32 WinPE 5.0 Menu Rev.2
echo        (c) GAVIN GILES 2017
echo ===============================================
ECHO.	
ECHO.
ECHO	SELECT OPERATION:
ECHO.
ECHO	[1] Format Drive with DiskPart
ECHO	[2] GImagex
ECHO	[3] FIX Boot 7 00e
ECHO	[4] Command Prompt
ECHO	[5] Boot MGR Missing
ECHO	[6] Copy Scripts and drivers
ECHO	[7] DIRECTORY
ECHO	[8] SURFACE PARTITION
ECHO	[9] Reset Local Admin.
ECHO	[10] Reboot Machine
ECHO	[11] Acronis
ECHO	[12] Check Disk on C
ECHO	[13] System Restore
ECHO	[14] 
ECHO	[15] 
ECHO	[R] Return to Splash Screen
ECHO	[X] Exit
ECHO.

SET CHOICE=
SET /p CHOICE=Select Operation to Perform: 
IF /i {%CHOICE%}=={1} (GOTO :FORMAT)
IF /i {%CHOICE%}=={2} (GOTO :GIMAGEX)
IF /i {%CHOICE%}=={3} (GOTO :FIXBOOT)
IF /i {%CHOICE%}=={4} (GOTO :CMD)
IF /i {%CHOICE%}=={5} (GOTO :BCDBOOT)
IF /i {%CHOICE%}=={6} (GOTO :SCRIPTS)
IF /i {%CHOICE%}=={7} (GOTO :PSTART)
IF /i {%CHOICE%}=={8} (GOTO :AES)
IF /i {%CHOICE%}=={9} (GOTO :ADMIN)
IF /i {%CHOICE%}=={10} (GOTO :EXIT)
IF /i {%CHOICE%}=={11} (GOTO :ACRONIS)
IF /i {%CHOICE%}=={12} (GOTO :CHK)
IF /i {%CHOICE%}=={13} (GOTO :RESTORE)
IF /i {%CHOICE%}=={14} (GOTO :)
IF /i {%CHOICE%}=={15} (GOTO :)
IF /i {%CHOICE%}=={R} (GOTO :TOP)
IF /i {%CHOICE%}=={X} (GOTO :END)

ECHO.
ECHO "%CHOICE%" is not valid...please try again

PAUSE
GOTO MENU 

:FORMAT
start "" diskpart.bat

goto TOP
:GIMAGEX
start "" gimagex.bat

goto TOP
:FIXBOOT
start "" fixboot.bat

goto TOP
:CMD
start "" cmd.bat

goto TOP
:BCDBOOT
start "" BCDboot.bat

goto TOP
:SCRIPTS
start "" scripts.bat

goto TOP
:PSTART
start "" Q-Dir.bat

goto TOP
:AES
start "" aes.bat

goto TOP
:ADMIN
start "" admin.bat

goto TOP
:ACRONIS
start "Acronis" Acronis.bat

goto TOP
:CHK
start "CHECK DISK" CHK.bat

goto TOP
:RESTORE
start "System Restore" C:\Windows\system32\rstrui.exe

goto TOP
:exit

:END