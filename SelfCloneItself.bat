@echo off
:main
timeout 10
fc C:\Users\LI\Desktop\team5.mdb C:\Users\LI\Desktop\team5Backup.mdb > nul
if errorlevel 1 goto differenceFile

:sameFile
echo Both files are same.
goto main

:differenceFile
echo Both files are different.
copy C:\Users\LI\Desktop\team5.mdb C:\Users\LI\Desktop\team5Backup.mdb
goto main