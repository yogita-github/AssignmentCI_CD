@echo off
echo ===============================
echo Running JAR file...
echo ===============================
set JAR_PATH=target\Jenkins-0.0.1-SNAPSHOT.jar

if exist %JAR_PATH% (
    java -jar %JAR_PATH%
) else (
    echo JAR file not found! Run build.bat first.
    exit /b 1
)
