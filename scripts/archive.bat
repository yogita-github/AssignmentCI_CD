@echo off
echo ===============================
echo Archiving build output...
echo ===============================

set OUTPUT_DIR=E:\Build Output\Username
set RELEASE_DIR=E:\Release Data\Username
set ZIP_NAME=release_%DATE:~-4%%DATE:~4,2%%DATE:~7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.zip
set ZIP_NAME=%ZIP_NAME: =0%
set FINAL_ZIP=%RELEASE_DIR%\%ZIP_NAME%

REM Create folders if not exist
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"
if not exist "%RELEASE_DIR%" mkdir "%RELEASE_DIR%"

REM Copy output
xcopy /Y /S target\*.jar "%OUTPUT_DIR%"

REM Zip using powershell
powershell Compress-Archive -Path target\* -DestinationPath "%FINAL_ZIP%"

echo Archive created at: %FINAL_ZIP%
