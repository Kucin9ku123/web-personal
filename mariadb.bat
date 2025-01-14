@echo off
echo MariaDB/MySQL sedang dijalankan ...
echo Untuk mematikan layanan MariaDB/MySQL, tekan tombol Ctrl + C
echo Port yang digunakan 3404

mariadb\bin\mysqld.exe --datadir=data --console

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:error
echo.
echo MariaDB/MySQL tidak bisa dijalankan
pause

:finish
