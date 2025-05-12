@echo off
echo ===============================
echo Cleaning up old builds...
echo ===============================

set RELEASE_DIR=E:\Release Data\Username

pushd "%RELEASE_DIR%"
for /f "skip=5 delims=" %%F in ('dir /b /a-d /o-d *.zip') do (
    echo Deleting: %%F
    del "%%F"
)
popd
