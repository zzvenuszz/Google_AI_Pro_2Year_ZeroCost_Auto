#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

echo "======================================================================"
echo "  Bảng Điều Khiển Tự Động Google AI Pro (5 TB) 2 Năm Miễn Phí - Linux"
echo "  Đang kiểm tra và cài đặt môi trường Python (.venv)..."
echo "======================================================================"

if [ ! -d ".venv" ]; then
    python3 -m venv .venv || {
        echo "⚠️ Không tìm thấy python3-venv, đang thử cài đặt trực tiếp qua pip..."
    }
fi

if [ -f ".venv/bin/python" ]; then
    PY_BIN=".venv/bin/python"
    PIP_BIN=".venv/bin/pip"
else
    PY_BIN="python3"
    PIP_BIN="python3 -m pip"
fi

$PIP_BIN install --upgrade pip
$PIP_BIN install -r requirements.txt

# Kiểm tra trình duyệt Chrome / Chromium trên Linux
if ! command -v google-chrome >/dev/null 2>&1 && \
   ! command -v google-chrome-stable >/dev/null 2>&1 && \
   ! command -v chromium >/dev/null 2>&1 && \
   ! command -v chromium-browser >/dev/null 2>&1; then
    echo "======================================================================"
    echo "  Không tìm thấy Chrome hệ thống, đang tải Chromium qua Playwright..."
    echo "======================================================================"
    $PY_BIN -m playwright install chromium
fi

echo ""
echo "======================================================================"
echo "  🚀 Đang khởi động Bảng Điều Khiển Web tại: http://127.0.0.1:8765"
echo "======================================================================"

if [ -n "$DISPLAY" ] && command -v xdg-open >/dev/null 2>&1; then
    (sleep 1.5 && xdg-open "http://127.0.0.1:8765" >/dev/null 2>&1) &
fi

exec $PY_BIN app.py
