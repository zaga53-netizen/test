@echo off
setlocal
set "ROOT=%~dp0"
set "DIST=%ROOT%.gradle-local\gradle-8.9"
if exist "%DIST%\bin\gradle.bat" goto run
where powershell >nul 2>nul || goto no_ps
if not exist "%ROOT%.gradle-local" mkdir "%ROOT%.gradle-local"
echo Gradle 8.9 indiriliyor...
powershell -NoProfile -ExecutionPolicy Bypass -Command "$u='https://services.gradle.org/distributions/gradle-8.9-bin.zip'; $z='%ROOT%.gradle-local\gradle.zip'; Invoke-WebRequest -Uri $u -OutFile $z; Expand-Archive -Path $z -DestinationPath '%ROOT%.gradle-local' -Force; Remove-Item $z"
if not exist "%DIST%\bin\gradle.bat" goto fail
:run
call "%DIST%\bin\gradle.bat" %*
exit /b %ERRORLEVEL%
:no_ps
echo PowerShell bulunamadi. Android Studio veya Gradle kurulumu gerekli.
exit /b 1
:fail
echo Gradle indirilemedi. Internet baglantisini kontrol edin.
exit /b 1
