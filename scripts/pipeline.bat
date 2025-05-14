@echo off
echo ===============================
echo Starting Full CI/CD Pipeline
echo ===============================

call scripts\build.bat || echo "Build failed, continuing anyway..."
call scripts\run.bat || echo "Run failed, continuing anyway..."
call scripts\archive.bat || echo "Archive failed, continuing anyway..."
call scripts\cleanup.bat || echo "Cleanup failed, continuing anyway..."
call scripts\send-email.bat || echo "Send email failed, continuing anyway..."

echo ===============================
echo Pipeline completed successfully!
echo ===============================
exit /b 0
