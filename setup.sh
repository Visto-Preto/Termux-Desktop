#!/data/data/com.termux/files/usr/bin/bash

clear

cd $HOME

echo -e '\e[1;36m Atualizando e baixando pacotes e suas dependencias \e[1m'
echo -e '''
\e[1;31m A velocidade de download depende da 
 sua conexao com a internet \e[1m
 
 '''

sleep 1
clear

apt update && apt upgrade -y
apt install -y wget git cowsay python
pip install lolcat
clear

cowsay -f eyes Termux Desktop | lolcat
echo -e ' '
curl -sLf https://raw.githubusercontent.com/Visto-Preto/Termux-Desktop/master/about/about | lolcat
echo -e 'Version : '$(curl -sLf https://raw.githubusercontent.com/Visto-Preto/Termux-Desktop/master/about/version) | lolcat
echo ' '
