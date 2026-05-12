#!/usr/bin/env bash
set -euo pipefail

# --- THAY ĐỔI Ở ĐÂY ---
TAG="v0.9.5"
FILE="XrayR-linux-64.zip"
# Trỏ link về repo cá nhân của bạn
BASE_URL="https://github.com/pkd11011/XrayR-release/releases/download/${TAG}"
# ----------------------

INSTALL_DIR="/usr/local/XrayR"
CONFIG_DIR="/etc/XrayR"
TMP_DIR="/tmp/xrayr-install"

if [ "$(id -u)" != "0" ]; then
  echo "Vui lòng chạy với quyền root (sudo su)"
  exit 1
fi

echo "==> Cài đặt phụ thuộc"
apt update
apt install -y wget unzip curl ca-certificates

echo "==> Tải bản cài đặt từ pkd11011"
rm -rf "${TMP_DIR}"
mkdir -p "${TMP_DIR}"
cd "${TMP_DIR}"
wget -O "${FILE}" "${BASE_URL}/${FILE}"

echo "==> Giải nén và cài đặt"
unzip -o "${FILE}"

mkdir -p "${INSTALL_DIR}"
mkdir -p "${CONFIG_DIR}"

if [ -f XrayR ]; then
  cp XrayR "${INSTALL_DIR}/XrayR"
elif [ -f ./XrayR/XrayR ]; then
  cp ./XrayR/XrayR "${INSTALL_DIR}/XrayR"
else
  BIN_PATH="$(find . -type f -name XrayR | head -n 1 || true)"
  if [ -z "${BIN_PATH}" ]; then
    echo "Không tìm thấy file thực thi XrayR"
    exit 1
  fi
  cp "${BIN_PATH}" "${INSTALL_DIR}/XrayR"
fi

chmod +x "${INSTALL_DIR}/XrayR"

CFG_PATH="$(find . -type f \( -name config.yml -o -name config.yaml \) | head -n 1 || true)"
if [ -n "${CFG_PATH}" ]; then
  cp -n "${CFG_PATH}" "${CONFIG_DIR}/config.yml" || true
fi

echo "==> Hoàn thành!"
echo "Đường dẫn chương trình: ${INSTALL_DIR}/XrayR"
echo "Đường dẫn cấu hình: ${CONFIG_DIR}/config.yml"
echo "Lệnh chạy thử: ${INSTALL_DIR}/XrayR"
