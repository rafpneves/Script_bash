#!/bin/bash

echo "===================================[ Instlanado o Zsh ]================================================"
sudo apt-get install zsh -y
echo ""
echo "=========================="
zsh --version
echo "=========================="
echo ""

whereis zsh 

# Agora iremos colocar o zsh como o shell padrao para o usuario este comando
sudo usermod -s /usr/bin/zsh $(whoami)

echo ""
echo "===============================[ Configurando arquivos zsh ]==========================================="

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"


#echo "============================[ Colocando o tema Powerlevel9K ]=========================================="

#echo "source /usr/shere/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc


