@echo off
chcp 65001 >nul
title Bảng Điều Khiển Tự Động Google AI Pro (5 TB) 2 Năm Miễn Phí
cd /d "%~dp0"
echo ======================================================================
echo   Đang khởi động Bảng Điều Khiển Tự Động Google AI Pro (5 TB) 2 Năm Miễn Phí...
echo   Địa chỉ Bảng Điều Khiển: http://127.0.0.1:8765
echo ======================================================================
start "" "http://127.0.0.1:8765"
python app.py
pause
