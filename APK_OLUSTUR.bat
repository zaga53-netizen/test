@echo off
cd /d "%~dp0"
echo Emlak Takip APK olusturuluyor...
call gradlew.bat assembleDebug
if errorlevel 1 (
  echo.
  echo APK olusturulamadi. Hata mesajlarini kontrol edin.
  pause
  exit /b 1
)
echo.
echo APK HAZIR!
echo app\build\outputs\apk\debug\app-debug.apk
explorer "%CD%\app\build\outputs\apk\debug"
pause
