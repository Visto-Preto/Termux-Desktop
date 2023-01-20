#!/data/data/com.termux/files/usr/bin/bash

## Author  : Leonardo Sousa (Visto Preto)
## Mail    : evppdepf@protonmail.ch
## Github  : @Visto-Preto

clear

cd $HOME

echo -e '\e[1;36m Atualizando e baixando pacotes e suas dependencias \e[1m'
echo -e '''
\e[1;31m A velocidade de download depende da 
 sua conexao com a internet \e[1m'''
sleep 2
clear

apt update && apt upgrade -y
apt install -y wget git cowsay python
pip install lolcat
clear

cowsay -f eyes Visto Preto | lolcat
