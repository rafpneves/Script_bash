#!/bin/bash
function exibe_title(){
clear
echo ""    
echo " ██████    ████   █████ ██  ██ ██████ ██████       "
echo " ██   ██  ██  ██ ██     ██ ██  ██     ██   ██      "
echo " ██    ██ ██  ██ ██     ████   ██████ ██   ██      "
echo " ██    ██ ██  ██ ██     ████   ██     ██████       "
echo " ██   ██  ██  ██ ██     ██ ██  ██     ██   ██      "
echo " ██████    ████   █████ ██  ██ ██████ ██    ██     "
}

######################################################################

function exibe_msg(){
exibe_title
echo ""
echo "--------------------------------------------------"
echo "|        [*] Selecione a Opçao desejada          |"
echo "|                                                |"
echo "|    [1] Iniciar um container Nginx              |"
echo "|    [2] Iniciar um container Mysql              |"
echo "|    [3] Verificar os container                  |"
echo "|    [4] Apagar os container                     |"
echo "|    [5] Reiniciando Docker                      |"
echo "--------------------------------------------------"
echo ""

echo "Opçao: "
read consulte
echo ""

}

###########################################[SE-1]################################################

function exibe_se-1(){
clear
exibe_title
echo "--------------------------------------------------"
pwd
tree -d
echo ""

echo "Qual o destino do Index? "
read Index

echo "Qual o nome do container?"
read name

echo  "Qual porta?"
read Porta

docker run -v $Index":/usr/share/nginx/html" --name $name -p $Porta:80 -d nginx
exibe_continue
}

############################################[SE-2]###############################################
# obs: -p 3306:3306 (espelhando a porta local na porta do container)
# Verificar as configuraçoes do container
# $docker inspect [ID]
# $docker inspect [ID] | grep IPAddress # Verificar o IP do container 

function exibe_se-1(){
clear
exibe_title
echo "--------------------------------------------------"
pwd
tree -d
echo ""

echo "Qual a senha do Banco? "
read senha

echo "Qual o nome do container?"
read name

echo  "Qual porta?"
read Porta

docker run -e MYSQL_ROOT_PASSWORD=$senha --name $name -d -p $Porta:$Porta mysql:5.7
echo ""
echo " [ Login do Banco:Root Senha:$senha ] "
echo " [ Versão do Mysql - 5.7 ] "
echo ""
exibe_continue
}

############################################[SE-3]###############################################

function exibe_se-3(){
clear
exibe_title
echo "--------------------------------------------------"
docker ps -a
echo "--------------------------------------------------"

exibe_continue
}

############################################[SE-4]################################################

function exibe_se-4(){
clear
exibe_title
echo "--------------------------------------------------"
echo "Id do container?"
read container

docker stop $container
docker rm $container

exibe_continue
}

############################################[SE-5]################################################

function exibe_se-4(){
clear
exibe_title
echo "--------------------------------------------------"
systemctl stop docker
echo "Parada iniciada!"
systemctl start docker
echo "Reiniciado Docker!"

exibe_continue
}

##########################################[continue]##############################################

function exibe_continue(){
echo "Deseja continuar ?  [S/N]"
read continuar

if [ $continuar = "S" ];
then
	exibe_msg
	exibe_se
else
	exit
fi

}

#############################################[SE]################################################
function exibe_se(){


if [ $consulte -eq 1 ]; 
then
    exibe_se-1
	
elif [ $consulte -eq 2 ]
then
	clear
	exibe_se-2
	echo ""
	echo ""
elif [ $consulte -eq 3 ]
then
	exibe_se-3
	echo ""
	echo "Container excluido!"
	echo ""
elif [ $consulte -eq 4 ]
then
	exibe_se-4

else
	exibe_se-5
fi
	
}


exibe_title
exibe_msg
exibe_se
