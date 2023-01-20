#!/data/data/com.termux/files/usr/bin/bash

clear

cd $HOME

echo -e '\033[1;36m Atualizando e baixando pacotes e suas dependencias \033[0m'
echo -e '''
\033[1;31m A velocidade de download depende da 
 sua conexao com a internet \033[0m
 
 '''

sleep 2
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
sleep 1
echo -e '\033[1;36m Instalando o\033[1;32m xfce4\033[1;36m e aplicativos\033[1;32m basicos\033[1;36m ...\033[0m\n'
sleep 1
apt install -y x11-repo 
apt update
