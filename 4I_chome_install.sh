#!/bin/bash
echo "==================================[ Efetuando o download do google chrome ]=========================================="
echo ""
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "=================================[ Efetuando aInstalaçao do google chrome ]=========================================="
echo ""
sudo apt install ./google-chrome-stable_current_amd64.deb
echo ""
echo "==================================[ Instaçao do google chrome concluida ]============================================"
