@echo off
echo ===============================
echo Sending email notification...
echo ===============================

REM Change this section based on your SMTP setup
set SUBJECT="Build Completed"
set BODY="Build completed successfully. Please find attached build log."
set TO="yvmahajan20@gmail.com"
set ATTACHMENT=build.log
set SMTP_SERVER="smtp.yourserver.com"
set FROM="yogitavm2001@gmail.com"

powershell -Command ^
Send-MailMessage -To "%TO%" -From "%FROM%" -Subject %SUBJECT% -Body %BODY% -SmtpServer %SMTP_SERVER% -Attachments "%ATTACHMENT%" -UseSsl

IF %ERRORLEVEL% NEQ 0 (
    echo Email failed!
    exit /b 1
)

echo Email sent.
