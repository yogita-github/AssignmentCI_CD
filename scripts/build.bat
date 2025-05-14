@echo off
echo Skipping compilation and building the Maven project...

mvn -Dmaven.compiler.skip=true clean package > build.log

if %ERRORLEVEL% NEQ 0 (
    echo Build failed. Check build.log
    exit /b 1
)

echo Build successful!
