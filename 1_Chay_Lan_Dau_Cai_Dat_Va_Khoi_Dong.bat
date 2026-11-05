@echo off
chcp 65001 >nul
title Bảng Điều Khiển Tự Động Google AI Pro (5 TB) 2 Năm Miễn Phí - Cài Đặt & Khởi Động
cd /d "%~dp0"
echo ======================================================================
echo   Đang kiểm tra và cài đặt các thư viện Python (fastapi, uvicorn, playwright)...
echo ======================================================================
python -m pip install -r requirements.txt
echo.
echo ======================================================================
echo   Đang khởi động Bảng Điều Khiển Web (http://127.0.0.1:8765) ...
echo ======================================================================
start "" "http://127.0.0.1:8765"
python app.py
pause
