#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

if [ ! -f ".venv/bin/python" ]; then
    echo "❌ Không tìm thấy .venv/bin/python. Hãy chạy ./1_chay_lan_dau_linux.sh trước để tạo môi trường ảo."
    exit 1
fi

PY_BIN=".venv/bin/python"

echo "======================================================================"
echo "  🚀 Đang khởi động Bảng Điều Khiển Tự Động Google AI Pro (5 TB)..."
echo "  🌐 Địa chỉ Bảng Điều Khiển: http://127.0.0.1:${APP_PORT:-8765}"
echo "======================================================================"

if [ -n "$DISPLAY" ] && command -v xdg-open >/dev/null 2>&1; then
    (sleep 1.5 && xdg-open "http://127.0.0.1:${APP_PORT:-8765}" >/dev/null 2>&1) &
fi

exec "$PY_BIN" app.py
