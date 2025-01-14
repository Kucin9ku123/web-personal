@echo off
echo HTTPD2 sedang dijalankan ...
echo Untuk mematikan layanan HTTPD2, tekan tombol Ctrl + C
echo Akses alamat di http://localhost:8089

httpd\bin\httpd.exe

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:error
echo.
echo HTTPD2 tidak bisa dijalankan
pause

:finish
