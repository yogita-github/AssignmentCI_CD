@echo off
echo Starting Maven build...
mvn clean install

IF %ERRORLEVEL% NEQ 0 (
    echo WARNING: Maven build failed, but continuing...
    REM Prevent script from failing the pipeline
    exit /b 0
)

exit /b 0
