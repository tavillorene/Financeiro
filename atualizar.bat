@echo off
cd /d "%~dp0"
docker compose run --rm backup create
docker compose pull
docker compose up -d
pause
