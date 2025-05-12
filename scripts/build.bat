@echo off
echo Building the Maven project...
mvn clean package > build.log

if %ERRORLEVEL% NEQ 0 (
    echo Build failed. Check build.log
    exit /b 1
)
echo Build successful!
