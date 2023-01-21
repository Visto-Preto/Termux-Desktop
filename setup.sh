#!/data/data/com.termux/files/usr/bin/bash

clear

cd $HOME

echo -e '\033[1;36m Atualizando e baixando pacotes e suas dependencias \033[0m'
echo -e '''
\033[1;31m A velocidade de download depende da 
 sua conexao com a internet \033[0m
 
 '''

sleep 3
clear

apt update
apt install -y wget git nano cowsay python
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
apt install -y xfce4 tigervnc xfce4-goodies audacious firefox

mkdir $HOME/Downloads 
mkdir $HOME/Documents 
mkdir $HOME/Pictures 
mkdir $HOME/Videos 

termux-setup-storage

ln -s $HOME/storage/music Music
ln -s /sdcard $HOME/Sdcard

wget https://github.com/Visto-Preto/Termux-Desktop/blob/master/termux-data.tar.xz
tar -xvf termux-data.tar.xz

cowsay -f eyes Termux Desktop | lolcat
echo -e ' '
curl -sLf https://raw.githubusercontent.com/Visto-Preto/Termux-Desktop/master/about/about | lolcat
echo -e 'Version : '$(curl -sLf https://raw.githubusercontent.com/Visto-Preto/Termux-Desktop/master/about/version) | lolcat
echo ' '
sleep 1
echo -e "\033[1;36mTermux Desktop instalado"
echo -e "Para iniciar o servidor vnc, use o comando: \033[1;32mvncserver\033[1;36m para pará-lo, use o comando: \033[1;32mvncserver -kill: 1\033[1;36m Substitua: \033[1;32m1\033[1;36m pela porta na qual o serviço vnc está sendo executado\033[0m"
