#!/bin/bash
echo "=====================[ Iniciando instalação ]====================="
wget http://cdn.mysql.com/Downloads/MySQLGUITools/mysql-workbench-community_8.0.25-1ubuntu20.04_amd64.deb -O mysql-workbench-community.deb

sudo dpkg -i /Doc/scripts/Pacote_deb/mysql-workbench-community.deb

sudo apt-get -f install

# Instalaçao foi funcionar somente dentro [/Doc/scripts/Pacote_deb/mysql-workbench-community.deb] !!!

echo "==========================[ Instalado ]==========================="
