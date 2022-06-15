#!/bin/bash 

read -p "digite o nome do arquivo: " arq
cat $arq|cut -f 3,4
