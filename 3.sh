#!/bin/bash
echo "Escolha uma alternativa:"
echo "r - Digite o nome de um arquivo que sera processado"
echo "a - Remova todas as letras do arquivo"
echo "b - Remova todos os dígitos do arquivo."
echo "c - Substitua todos os caracteres que não são letras nem dígitos do arquivo por $."
echo "q - Saia do script"
while true;do
	read -p "dig...: " arq 

	case $arq in
		"r") echo "digite o nome do arq: " 
		     read nome
		     cat $nome;;
		"a") sed -r 's/[^0-9]//g' < $nome;;
		"b") sed -r 's/[0-9]//g' < $nome;;
		"c") sed -r 's/[^0-9Aa-Zz]/$/g' < $nome;;	
		"q") break ;;
	esac

									
done
