@echo off

:: Set paths for output and release directories
set OUTPUT_DIR=D:\BuildOutput\yogitam
set RELEASE_DIR=D:\ReleaseData\yogitam

:: Check if the output directory exists, if not create it
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

:: Check if the release directory exists, if not create it
if not exist "%RELEASE_DIR%" mkdir "%RELEASE_DIR%"

:: Build the project (Assuming Maven is set up correctly)
echo Running Maven Build...
mvn clean package

:: Copy build output to OUTPUT_DIR
echo Copying build output...
xcopy /Y /S "target\*.jar" "%OUTPUT_DIR%"

:: Zip the final release folder and place it under RELEASE_DIR
echo Zipping the build output...
powershell Compress-Archive -Path "%OUTPUT_DIR%\*" -DestinationPath "%RELEASE_DIR%\release_%date:~10,4%-%date:~4,2%-%date:~7,2%.zip"

echo Build and Release completed successfully.

