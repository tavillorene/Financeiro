@echo off
cd /d "%~dp0"
docker compose --profile backup down
pause
