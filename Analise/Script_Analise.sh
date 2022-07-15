#!/bin/bash
function exibe_title(){
	
	echo -e "\033[01;33m                              888 d8b               \033[01;37m     "
	echo -e "\033[01;33m                              888 Y8P                   \033[01;37m "
        echo -e "\033[01;33m                              888                       \033[01;37m "
 	echo -e "\033[01;33m    8888b.  88888b.   8888b.  888 888 .d8888b   .d88b.  \033[01;37m "  
    	echo -e "\033[01;33m        88b 888  88b      88b 888 888 88K      d8P  Y8b \033[01;37m "
	echo -e "\033[01;33m   .d888888 888  888 .d888888 888 888  Y8888b. 88888888 \033[01;37m "
        echo -e "\033[01;33m   888  888 888  888 888  888 888 888      X88 Y8b.     \033[01;37m " 
        echo -e "\033[01;33m    Y888888 888  888  Y888888 888 888  88888P'   Y8888  \033[01;37m "

}
function exibe_msg(){
	echo""
	echo "--------------------------------------------------------"
	echo "Informe o caminho do arquivo ou diretorio para analise: "
	echo -e "	    \033[01;33m [ EX: /var/log/messages ] \033[01;37m "
	msgvalida="/var/log/messages"
	echo ""
	read rota
	echo "--------------------------------------------------------"
}

function exibe_se(){
if [ $rota = $msgvalida ]
then 
	{
	echo -e "Rota\033[01;33m Valida\033[01;37m !!"
	if [ -d $Rota ]
	then
		echo -e "Rota termina em um\033[01;33m DIRETORIO \033[01;37m "
		exibe_se2
	else
		echo -e "Rota termina em um\033[01;33m ARQUIVO \033[01;37m "
		exibe_se2
	fi
	}
else 
	echo -e "Rota nao\033[01;33m Valida \033[01;37m!!"
	echo "--------------------------------------------------------"
fi
}

function exibe_se2(){
if [ -r $rota ]
then
	{
		echo -e "Permição do mesmo e de\033[01;33m  LEITURA\033[01;37m "
		echo "-------------------------------------------------------"
	}
elif [ -w $rota ]
then
	{
		echo -e "Permição do mesmo e de\033[01;33m  ESCRITA\033[37m "
		echo "-------------------------------------------------------"
	}
else
	echo -e "Permição do mesmo e de\033[01;33m EXECUÇÃO\033[01;37m "
	echo "-------------------------------------------------------"
fi
}

clear
exibe_title
exibe_msg
exibe_se


