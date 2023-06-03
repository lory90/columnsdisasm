@ECHO OFF

REM // build the ROM
call build %1

REM  // run fc
echo -------------------------------------------------------------
IF EXIST columnsbuilt.bin ( fc /b columnsbuilt.bin columnsoriginal.bin
) ELSE echo columnsbuilt.bin does not exist, probably due to an assembly error

REM // clean up after us
IF EXIST columns.lst del columns.lst
IF EXIST columnsbuilt.bin del columnsbuilt.bin
IF EXIST errors.txt del errors.txt

REM // if someone ran this from Windows Explorer, prevent the window from disappearing immediately
pause
