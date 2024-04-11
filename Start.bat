@echo off
tasklist | find /i "node.exe" > nul
if %errorlevel% equ 0 (
    echo Service is already running.
    exit
)

pushd %~dp0
set NODE_ENV=production
call npm install --no-audit --no-fund --quiet --omit=dev
node server.js %*
pause
popd
