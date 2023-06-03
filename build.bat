@echo off

asm68k /k /p /o ae- columns.asm, columnsbuilt.bin >errors.txt, , columns.lst
fixheadr.exe columnsbuilt.bin