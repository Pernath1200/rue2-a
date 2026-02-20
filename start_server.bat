@echo off
cd /d "%~dp0"
echo Starting Grammar Check app...
echo.
echo Serving from: %CD%
echo Open your browser at: http://localhost:8080
echo.
echo Press Ctrl+C to stop the server when done.
echo.
start http://localhost:8080
python -m http.server 8080
