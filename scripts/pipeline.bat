@echo off
echo ===============================
echo Starting Full CI/CD Pipeline
echo ===============================

call scripts\build.bat
call scripts\run.bat
call scripts\archive.bat
call scripts\cleanup.bat
call scripts\send-email.bat

echo ===============================
echo Pipeline completed successfully!
echo ===============================
exit /b 0
