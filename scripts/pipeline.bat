@echo off
echo ===============================
echo Starting Full CI/CD Pipeline
echo ===============================

call scripts\build.bat
REM build.bat handles its own errors, no exit /b here

call scripts\run.bat || (
    echo ERROR: run.bat failed!
    exit /b 1
)

call scripts\archive.bat || (
    echo ERROR: archive.bat failed!
    exit /b 1
)

call scripts\cleanup.bat || (
    echo ERROR: cleanup.bat failed!
    exit /b 1
)

call scripts\send-email.bat || (
    echo ERROR: send-email.bat failed!
    exit /b 1
)

echo ===============================
echo Pipeline completed successfully!
echo ===============================
exit /b 0
