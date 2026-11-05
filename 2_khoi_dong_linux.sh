#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

if [ -f ".venv/bin/python" ]; then
    PY_BIN=".venv/bin/python"
else
    PY_BIN="python3"
fi

echo "======================================================================"
echo "  🚀 Đang khởi động Bảng Điều Khiển Tự Động Google AI Pro (5 TB)..."
echo "  🌐 Địa chỉ Bảng Điều Khiển: http://127.0.0.1:8765"
echo "======================================================================"

if [ -n "$DISPLAY" ] && command -v xdg-open >/dev/null 2>&1; then
    (sleep 1.5 && xdg-open "http://127.0.0.1:8765" >/dev/null 2>&1) &
fi

exec $PY_BIN app.py
