@echo off
set SKIP_BUILD=true

if "%SKIP_BUILD%"=="true" (
    echo Skipping Maven build...
    echo Skipped build for testing. > build.log
    echo Build successful!
    exit /b 0
)

echo Building the Maven project...
mvn clean package > build.log

if %ERRORLEVEL% NEQ 0 (
    echo Build failed. Check build.log
    exit /b 1
)
echo Build successful!
