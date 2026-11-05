# 🚀 Bảng Điều Khiển Tự Động Google AI Pro (5 TB) 2 Năm Miễn Phí (`US$0.00 -> 24 Tháng`)

Công cụ tự động hóa toàn trình đăng ký và cộng dồn gói **Google AI Pro (5 TB)** lên **24 tháng (2 năm)** với chi phí **US$0.00**, hỗ trợ đa nền tảng **Windows** và **Linux (Desktop & VPS Headless)**.

---

## 📋 I. Yêu cầu môi trường

1. **Hệ điều hành**:
   - **Windows**: Windows 10 / 11 (64-bit).
   - **Linux**: Ubuntu / Debian / CentOS / Arch... (hỗ trợ cả `x86_64` và `ARM64`, chạy được trên cả máy có màn hình Desktop lẫn VPS/Server không có màn hình thông qua màn hình ảo `Xvfb`).
2. **Trình duyệt**:
   - Đã cài đặt **Google Chrome** hoặc **Chromium**.
   - *Lưu ý trên Linux*: Nếu máy chưa cài sẵn Chrome/Chromium, script khởi chạy lần đầu sẽ tự động tải bản Chromium tương thích qua Playwright.
3. **Python**:
   - Phiên bản **Python 3.10 trở lên** (trên Windows khi cài đặt nhớ tích chọn **"Add Python to PATH"**).
4. **Môi trường mạng**:
   - Bật Proxy/VPN khu vực **Mỹ (US)** trên máy, hoặc điền trực tiếp mẫu Proxy (`http://user:pass@host:port`, `host:port:user:pass`...) ở cột bên trái của bảng điều khiển.

---

## ⚡ II. Hướng dẫn khởi động nhanh

### 🪟 1. Trên Windows
1. **Chạy lần đầu**: Nhấp đúp chuột vào file [`1_Chay_Lan_Dau_Cai_Dat_Va_Khoi_Dong.bat`](1_Chay_Lan_Dau_Cai_Dat_Va_Khoi_Dong.bat) để tự động cài đặt các thư viện Python (`fastapi`, `uvicorn`, `playwright`) và khởi động server.
2. **Sử dụng hàng ngày**: Nhấp đúp chuột vào file [`2_Khoi_Dong_Bang_Dieu_Khien.bat`](2_Khoi_Dong_Bang_Dieu_Khien.bat).
3. Trình duyệt sẽ tự động mở trang điều khiển tại: `http://127.0.0.1:8765`

---

### 🐧 2. Trên Linux (Desktop hoặc VPS / Server)

1. **Cài đặt các gói hệ thống cần thiết** (đặc biệt là `xvfb` nếu chạy trên VPS/Server không có màn hình để giả lập màn hình đồ họa X11, giúp tránh bị Google chặn Headless):
   ```bash
   sudo apt update && sudo apt install -y xvfb python3-venv python3-pip psmisc
   ```

2. **Chạy lần đầu (Tự động tạo `.venv`, cài thư viện & tải Chromium nếu thiếu)**:
   ```bash
   chmod +x 1_chay_lan_dau_linux.sh 2_khoi_dong_linux.sh
   ./1_chay_lan_dau_linux.sh
   ```

3. **Các lần chạy tiếp theo**:
   ```bash
   ./2_khoi_dong_linux.sh
   ```

4. **Truy cập giao diện điều khiển Web**:
   - **Trên Linux Desktop**: Mở `http://127.0.0.1:8765`
   - **Trên VPS / Server từ xa**: Mở `http://<IP-VPS>:8765` (hoặc dùng SSH Port Forwarding dưới máy cá nhân: `ssh -L 8765:127.0.0.1:8765 user@ip-vps` rồi truy cập `http://127.0.0.1:8765`).

#### 🔧 Biến môi trường tùy chỉnh trên Linux (Không bắt buộc)
- `PORT`: Đổi cổng chạy Web Server (mặc định: `8765`).
- `HOST`: Đổi địa chỉ lắng nghe (mặc định trên Linux: `0.0.0.0`, trên Windows: `127.0.0.1`).
- `CHROME_BIN`: Chỉ định đường dẫn file thực thi trình duyệt Chrome/Chromium tùy chỉnh.
  ```bash
  PORT=9000 CHROME_BIN=/usr/bin/google-chrome ./2_khoi_dong_linux.sh
  ```

---

## 🛠️ III. Hướng dẫn cấu hình thẻ thanh toán & Chạy tài khoản

### 1. Điền thẻ thanh toán (Bắt buộc)
- Tại khu vực **【⚙️ Cấu hình chung & Liên kết thẻ miễn thuế】** ở bên trái trang web, điền thông tin thẻ quốc tế **Visa** hoặc **Mastercard**:
  - **Số thẻ**: 16 chữ số
  - **Hạn dùng**: Tháng / Năm (ví dụ: `08` / `29`)
  - **Mã bảo mật (CVC)**: 3 chữ số
  - **Tên chủ thẻ**: Tên tiếng Anh không dấu (ví dụ: `NGUYEN VAN A`)
  - **Mã ZIP miễn thuế / Bang**: Mặc định đã điền sẵn `97201` / `OR` (Bang Oregon - Mỹ, miễn thuế), không cần sửa đổi.
- Nhấn nút **【💾 Lưu cấu hình】**.
- 🛡️ **Cơ chế bảo vệ 0 đồng**: Hệ thống kiểm tra nghiêm ngặt nội dung cửa sổ thanh toán Google Play, chỉ nhấn đăng ký khi xác nhận mức giá là **`US$0.00`**, đảm bảo không phát sinh bất kỳ khoản trừ tiền nào.

### 2. Nhập hàng loạt tài khoản Google
- Tại khu vực **【📥 Khu vực nhập tài khoản hàng loạt】** ở bên phải trang web, dán danh sách tài khoản (mỗi dòng 1 tài khoản), hỗ trợ mọi ký tự phân cách (`----`, `/`, `|`, `—`, khoảng trắng...):
  - `Email----Mật khẩu----Email khôi phục`
  - `Email----Mật khẩu----Email khôi phục----Mã khóa 2FA`
  - `Email----Mật khẩu----Mã khóa 2FA`
  - Có thể kèm thêm Proxy riêng ở cuối dòng: `Email----Mật khẩu----Mã khóa 2FA----http://user:pass@host:port`
- Nhấn nút **【➕ Nhập danh sách tài khoản】**.

### 3. Bắt đầu thực thi tự động 5 bước
- Nhấn nút **【▶ Thực thi】** ở từng tài khoản hoặc nút **【▶ Tự động chạy hàng loạt tài khoản chờ】** ở góc trên.
- Quy trình 5 bước tự động hoàn toàn:
  - **Step 1**: Tự động đăng nhập Google và vượt xác minh Email khôi phục / mã động 2FA TOTP.
  - **Step 2**: Tự động liên kết thẻ miễn thuế trực tiếp (ZIP `97201`) + Nhận gói miễn phí tầng 1 (**12 tháng - US$0.00**).
  - **Step 3**: Cộng dồn gói miễn phí tầng 2 thêm 6 tháng (**US$0.00 -> 18 tháng**).
  - **Step 4**: Cộng dồn gói miễn phí tầng 3 thêm 6 tháng (**US$0.00 -> Tối đa 24 tháng / 2028**).
  - **Step 5**: Tự động truy cập Google Play hủy gia hạn tự động, khóa ngày hết hạn năm 2028 và chụp ảnh màn hình đối chiếu (**【🖼 Xem】**).

---

## 📂 IV. Cấu trúc thư mục dự án

| File / Thư mục | Mô tả |
| :--- | :--- |
| `app.py` | Backend API Server (FastAPI) quản lý trạng thái, cấu hình và hàng đợi tài khoản |
| `automation_engine.py` | Engine tự động hóa trình duyệt (Playwright CDP + Ngbm Interceptor + Local Proxy Bridge) |
| `templates/index.html` | Giao diện điều khiển Web thời gian thực (Tiếng Việt) |
| `1_Chay_Lan_Dau_Cai_Dat_Va_Khoi_Dong.bat` | Script cài đặt & khởi chạy lần đầu trên Windows |
| `2_Khoi_Dong_Bang_Dieu_Khien.bat` | Script khởi động nhanh trên Windows |
| `1_chay_lan_dau_linux.sh` | Script cài đặt `.venv`, thư viện, Chromium & khởi chạy lần đầu trên Linux |
| `2_khoi_dong_linux.sh` | Script khởi động nhanh trên Linux |
| `config.json` | File lưu cấu hình thẻ, proxy và danh sách tài khoản |
| `screenshots/` | Thư mục lưu ảnh chụp màn hình xác nhận từng bước của mỗi tài khoản |
| `profiles/` | Thư mục lưu Profile Chrome độc lập của từng tài khoản |

---

## 🔗 Liên kết tham khảo
- **Trang mua hàng (Shop)**: https://faka.cdkey.si
- **Blog**: https://blog.caowo.de
- **Nhóm Telegram**: `@Hello_Florence`
