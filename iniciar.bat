@echo off
cd /d "%~dp0"
echo Iniciando o Sure...
docker compose up -d
if errorlevel 1 (
  echo.
  echo ERRO: abra o Docker Desktop e espere ele ficar verde, depois rode de novo.
  pause
  exit /b 1
)
docker compose --profile backup up -d backup
timeout /t 15 >nul
start http://localhost:3000
