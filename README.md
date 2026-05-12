# XrayR (Phiên bản lưu trữ pkd11011)

[![](https://img.shields.io/badge/TgChat-@XrayR讨论-blue.svg)](https://t.me/XrayR_project)
[![](https://img.shields.io/badge/Channel-@XrayR通知-blue.svg)](https://t.me/XrayR_channel)
![](https://img.shields.io/github/stars/pkd11011/Xrayr0.9.5)
![](https://img.shields.io/github/forks/pkd11011/Xrayr0.9.5)
[![Github All Releases](https://img.shields.io/github/downloads/pkd11011/Xrayr0.9.5/total.svg)]()

[English](https://github.com/pkd11011/Xrayr0.9.5/blob/master/README-en.md) | [Vietnamese](https://github.com/pkd11011/Xrayr0.9.5/blob/master/README-vi.md)

Một backend framework dựa trên Xray, hỗ trợ nhiều panel (V2board, SSPanel,...) và các giao thức phổ biến như V2ray, Trojan, Shadowsocks.

## 免责声明 (Miễn trừ trách nhiệm)

Dự án này được Fork và lưu trữ (Backup) nhằm mục đích học tập và dự phòng cá nhân. Người sử dụng tự chịu trách nhiệm về mọi hậu quả phát sinh từ việc sử dụng phần mềm này.

## 特点 (Đặc điểm)

* **Vĩnh viễn miễn phí:** Mã nguồn mở và không thu phí.
* **Hỗ trợ đa giao thức:** V2ray, Trojan, Shadowsocks, Vless và các tính năng mới như XTLS, Reality.
* **Quản lý linh hoạt:** Một instance có thể kết nối đồng thời nhiều panel và nhiều node.
* **Hiệu suất cao:** Hỗ trợ giới hạn IP online, giới hạn tốc độ người dùng và cập nhật cấu hình không cần khởi động lại.

## 软件安装 (Cài đặt phần mềm)

### 1. Cài đặt nhanh (Một chạm)
Đây là lệnh cài đặt đã được tối ưu hóa để lấy script từ kho lưu trữ của bạn. Đảm bảo bạn đã sửa file `install.sh` để trỏ đúng về repo này.

```bash
wget -N https://raw.githubusercontent.com/pkd11011/XrayR-release/master/install.sh && bash install.sh
