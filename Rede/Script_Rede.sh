#!/bin/bash
echo "==========================================[ Reiniciando rede ]================================"

#sudo service network-manager restart

echo "[-] Desativando Rede WIFI..."
sudo ifconfig enp0s3 down

echo "[+] Ativando Rede WIFI"
sudo ifconfig enp0s3 up

echo ""
echo "==============================================[ Concluido ]==================================="

