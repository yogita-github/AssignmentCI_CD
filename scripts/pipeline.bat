@echo off
echo ===============================
echo Starting Full CI/CD Pipeline
echo ===============================

call scripts\build.bat || exit /b
call scripts\run.bat || exit /b
call scripts\archive.bat || exit /b
call scripts\cleanup.bat || exit /b
call scripts\send-email.bat || exit /b

echo ===============================
echo Pipeline completed successfully!
echo ===============================
