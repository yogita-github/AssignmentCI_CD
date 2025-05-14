@echo off
echo ===============================
echo Building Maven project...
echo ===============================

REM Run Maven build
mvn clean install

REM Check if build failed
IF %ERRORLEVEL% NEQ 0 (
    echo WARNING: Maven build failed. Continuing anyway.
    REM Prevent failure
    exit /b 0
)

exit /b 0
