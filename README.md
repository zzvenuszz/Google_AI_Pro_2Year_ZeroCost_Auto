========================================================================
  Bảng Điều Khiển Tự Động Google AI Pro (5 TB) 2 Năm Miễn Phí (US$0.00 -> 24 Tháng)
========================================================================

【I. Yêu cầu môi trường chạy】
1. Hệ điều hành:
   - Windows 10 / 11
   - Hoặc Linux (Ubuntu / Debian / CentOS..., hỗ trợ cả Linux Desktop có giao diện lẫn Linux VPS/Server không màn hình qua Xvfb)
2. Trình duyệt: Google Chrome hoặc Chromium (trên Linux nếu chưa cài sẽ tự động tải Chromium qua Playwright)
3. Python 3.10 trở lên (trên Windows khi cài đặt nhớ tích chọn "Add Python to PATH")
4. Môi trường mạng: Bật proxy khu vực Mỹ (US) trên máy, hoặc điền mẫu proxy ở cột bên trái của bảng điều khiển

【II. Các bước khởi động nhanh】
▶ Trên Windows:
1. Lần đầu sử dụng, nhấp đúp chuột chạy file: 【1_Chay_Lan_Dau_Cai_Dat_Va_Khoi_Dong.bat】
2. Những lần sử dụng sau, chỉ cần nhấp đúp chuột vào: 【2_Khoi_Dong_Bang_Dieu_Khien.bat】
3. Trình duyệt sẽ tự động mở trang bảng điều khiển tại địa chỉ: http://127.0.0.1:8765

▶ Trên Linux (Desktop hoặc VPS):
1. Cài đặt gói hỗ trợ màn hình ảo Xvfb (khuyên dùng nếu chạy trên VPS/Server không có màn hình):
   sudo apt update && sudo apt install -y xvfb python3-venv psmisc
2. Lần đầu sử dụng, cấp quyền thực thi và chạy script cài đặt:
   chmod +x 1_chay_lan_dau_linux.sh 2_khoi_dong_linux.sh
   ./1_chay_lan_dau_linux.sh
3. Những lần sử dụng sau, chỉ cần chạy:
   ./2_khoi_dong_linux.sh
4. Mở trình duyệt truy cập: http://127.0.0.1:8765 (hoặc http://<IP-Server>:8765)

【III. Hướng dẫn điền thẻ thanh toán & Chạy tài khoản】
1. Điền thẻ thanh toán (Bắt buộc):
   - Tại khu vực 【Cấu hình chung & Liên kết thẻ miễn thuế】 ở bên trái trang web, hãy điền thẻ thanh toán quốc tế Visa hoặc Mastercard của bạn:
     * Số thẻ (16 chữ số)
     * Hạn dùng (Tháng / Năm, ví dụ: 08 / 29)
     * Mã bảo mật (3 số CVC)
     * Tên chủ thẻ không dấu (tiếng Anh, ví dụ: NGUYEN VAN A)
     * Mã ZIP miễn thuế mặc định đã được điền sẵn là 97201 (Bang Oregon - Mỹ, miễn thuế), không cần sửa đổi
   - Sau khi điền xong, nhấn vào nút 【💾 Lưu cấu hình】.
   - Lưu ý: Script được tích hợp cơ chế bảo vệ chi tiêu 0 đồng nghiêm ngặt, chỉ nhấn đăng ký khi cửa sổ thanh toán xác nhận mức giá là US$0.00, đảm bảo không bị trừ tiền trong suốt quá trình.

2. Nhập hàng loạt tài khoản Google:
   - Tại khu vực 【Khu vực nhập tài khoản hàng loạt】 ở bên phải trang web, dán danh sách tài khoản vào (mỗi dòng một tài khoản), hỗ trợ bất kỳ định dạng nào sau đây:
     * Email----Mật khẩu----Email khôi phục
     * Email----Mật khẩu----Email khôi phục----Mã khóa 2FA
     * Email----Mật khẩu----Mã khóa 2FA
   - Nhấn vào nút 【➕ Nhập danh sách tài khoản】.

3. Bắt đầu thực thi tự động hoàn toàn:
   - Nhấn vào nút 【▶ Thực thi】 ở bên phải từng tài khoản, hoặc nút 【▶ Tự động chạy hàng loạt tài khoản chờ】 ở phía trên cùng.
   - Script sẽ tự động hoàn thành các bước:
     Step 1: Tự động đăng nhập Google và vượt qua bước xác minh Email khôi phục / 2FA
     Step 2: Liên kết thẻ miễn thuế trực tiếp + Nhận gói miễn phí tầng 1 (12 tháng - US$0.00)
     Step 3: Cộng dồn gói miễn phí tầng 2 thêm 6 tháng (US$0.00 -> 18 tháng)
     Step 4: Cộng dồn gói miễn phí tầng 3 thêm 6 tháng (US$0.00 -> Tối đa 24 tháng)
     Step 5: Tự động truy cập Google Play để hủy gia hạn tự động, khóa quyền lợi 2 năm và chụp ảnh màn hình xác nhận


# Trang mua hàng (Shop): https://faka.cdkey.si
# Blog: https://blog.caowo.de
# Nhóm Telegram: @Hello_Florence
