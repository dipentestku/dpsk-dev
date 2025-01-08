#!/bin/bash

cd / || { echo "Gagal masuk ke root directory!"; exit 1; }
cd /tmp > /dev/null 2>&1 || { echo "Gagal menemukan directory!!"; exit 1; }
echo -e "Sedang menginstall ${YELLOW}git${NC}"
sudo apt-get install -y git >> /dev/null
git clone https://github.com/dipentestku/dpsk-tool.git > /dev/null 2>&1 || { echo "Gagal meng-clone repository!"; exit 1; }
cd dpsk-tool > /dev/null 2>&1 || { echo "Direktori 'dpsk-tool' tidak ditemukan!"; exit 1; }
sudo python3 -m pip install . --break-system-packages > /dev/null 2>&1 || { echo "Gagal menginstal package!"; exit 1; }
cd ~
echo "Proses selesai dengan sukses!"
