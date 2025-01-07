#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "Sedang menginstall ${YELLOW}golang-go${NC}"
sudo apt-get install -y golang-go >> /dev/null

if ! grep -q 'export PATH=\$PATH:\$HOME/go/bin' ~/.zshrc; then
  echo -e "${GREEN}Memasukkan golang ke PATH...${NC}"
  echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.zshrc
else
  echo -e "${RED}Path golang sudah ada diexport sebelumnya.${NC}"
fi

echo -e "${YELLOW}Mengupdate data...${NC}"
sudo apt-get update >> /dev/null

echo -e "Sedang menginstall ${YELLOW}nmap${NC}"
sudo apt-get install -y nmap >> /dev/null

echo -e "${GREEN}Proses instalasi selesai.${NC}"
