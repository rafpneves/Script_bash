#!/bin/bash

## Dando permisao para usuarios: [ sudo chown -R -v "Usuario" /pasta_destino/ ]

echo "==================================[ Efetuando atualizaçao ]=========================================="
sudo apt update && sudo apt upgrade -y
echo "======================================[ Instlando Tree ]============================================="
sudo apt install tree -y
echo "=======================================[ Instlando Git ]============================================="
sudo apt install git -y
echo "====================================[ Instlando ifconfig ]==========================================="
sudo apt install net-tools -y
echo "=============================================[ Instlando vs ]========================================"
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

echo "===================================[ Instando o Neofetch ]==========================================="
sudo apt-get install neofetch -y
neofetch

