@echo off
echo ===============================
echo Starting Full CI/CD Pipeline
echo ===============================

call scripts\build.bat || exit /b 0
call scripts\run.bat || exit /b 0
call scripts\archive.bat || exit /b 0
call scripts\cleanup.bat || exit /b 0
call scripts\send-email.bat || exit /b 0

echo ===============================
echo Pipeline completed successfully!
echo ===============================
exit /b 0
