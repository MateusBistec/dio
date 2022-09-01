#!/bin/bash

#atualiza cache
apt-get update upgrade -y
apt autoremove -y
echo Cache Atualizado

#instala samba
apt-get install samba -y

#instala xampp
apt-get install wget -y
rm -rf xampp*
wget https://downloadsapachefriends.global.ssl.fastly.net/8.1.6/xampp-linux-x64-8.1.6-0-installer.run
echo XAMPP BAIXADO

chmod 755 xampp-linux-x64-8.1.6-0-installer.run
echo INSTALANDO XAMPP
echo 'Y' | ./xampp-linux-x64-8.1.6-0-installer.run
rm -rf xampp*
echo REMOVE INSTALADOR DO XAMPP

#mudando permições da pasta
chmod 777 -R /opt/lampp/htdocs
echo  PERMIÇÕES DA PASTA HTDOCS PUBLICA
