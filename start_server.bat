@echo off
cd /d "%~dp0"
title Grammar Check - SERVER (keep this window open)
echo Starting Grammar Check app...
echo.
echo Serving from: %CD%
echo.
echo *** THIS WINDOW IS THE SERVER ***
echo - If you close this window, the site will stop working.
echo - Leave this window open, then in your browser open:
echo   http://127.0.0.1:8080
echo   (Use 127.0.0.1 if localhost gives an error.)
echo.
echo Opening browser in 4 seconds...
echo.
start cmd /c "timeout /t 4 /nobreak >nul && start http://127.0.0.1:8080"
python -m http.server 8080 --bind 127.0.0.1
