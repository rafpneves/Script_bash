#!/bin/bash
function exibe_title(){
	echo ""
	echo "                    █████   ███  ████████████ ████████ ████████  "
	echo "                    ███ ███ ███  ███ ████ ███ ███  ███ ███  ███  "
	echo "                    ███  ██████  ███  ██  ███ ████████ ████████  "
	echo "                    ███   █████  ███      ███ ███  ███ ███       "
	echo "                    ███    ████  ███      ███ ███  ███ ███       "
}

function exibe_title2(){
	ifconfig >ifl.txt
	grep "broadcast" ifl.txt >R.txt
	echo '----------------------------------------------------------------------------------'
	cat R.txt
	echo '----------------------------------------------------------------------------------'
	rm ifl.txt R.txt
}

function exibe_Verifica1(){
	echo "Qual Ip deseja verificar?"
	read res1
	mais="/24"
	ip=$res1$mais
	echo ""
	echo "                          [ Ip analizado: "$ip "]"
	echo '----------------------------------------------------------------------------------'
	nmap -sP $ip >Log.txt
	grep "Nmap" Log.txt > Resultado.txt
	cat Resultado.txt
	echo "----------------------------------------------------------------------------------"
	echo ""
}

function exibe_Verifica2(){
	echo "Qual Ip deseja verificar?"
	read res2
	echo ""
	echo "                          [ Ip analizado: "$res2 "]"
	echo '----------------------------------------------------------------------------------'
	nmap -sT $res2 >Log2.txt
	cat Log2.txt
	echo "----------------------------------------------------------------------------------"
	echo ""
}

function exibe_escolha(){
	echo '                              [*]Selecione a opçao   '
	echo '                           --------------------------'
	echo ''
	echo '                            [1] Maquinas na rede -sP '
	echo '                            [2] Varredura de portas -sT'
	echo "----------------------------------------------------------------------------------"
	read consulte 
}

function exibe_se1(){
	if [ "$consulte" -eq 1 ];
	then
		echo "----------------------------------------------------------------------------------"
		exibe_Verifica1
	fi
}

function exibe_se2(){
	if  [ "$consulte" -eq 2 ];
	then
		exibe_Verifica2
	fi
}

clear
exibe_title
exibe_title2
exibe_escolha
exibe_se1
exibe_se2
