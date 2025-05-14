@echo off
echo ===============================
echo Running JAR file...
echo ===============================

REM Path to JAR file
set JAR_PATH=target\your-app-name.jar

IF EXIST %JAR_PATH% (
    java -jar %JAR_PATH%
) ELSE (
    echo JAR file not found. Skipping execution but continuing.
)

exit /b 0
