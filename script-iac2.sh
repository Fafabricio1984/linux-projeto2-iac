#!/bin/bash

echo "Atualizar o servidor"
apt-get update
apt-get upgrade -y

echo "Instalar Apache"
apt-get install apache2 -y

echo "Instalar UNZIP" 
apt-get install unzip -y

echo "Abrir a pasta TMP"
cd /tmp

echo "Download e cópia dos arquivos da aplicação"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactar o Download"
unzip main.zip

echo "Abrir a pasta descompactada"
cd linux-site-dio-main

echo "Copiar seu conteudo para a pasta destino"
cp -R * /var/www/html/

echo "Finalizado"
