@echo off
echo ?? Iniciando servidor en modo PRODUCCI�N...
echo.
echo ??  Aseg�rate de tener configurado tu archivo .env con:
echo    - SUPABASE_URL
echo    - SUPABASE_SERVICE_ROLE_KEY  
echo    - JWT_SECRET
echo.
echo ?? Obt�n tus credenciales en: https://supabase.com/dashboard
echo.
python run_server.py
pause
