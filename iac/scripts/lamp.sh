#!/usr/bin/env bash

echo "Iniciando a instalação do Apache Web Server"
sudo dnf install httpd -y

echo "Iniciando o Apache Web Server"
sudo systemctl start httpd.service

echo "Habilitando o Apache Web Server no Boot"
sudo systemctl enable httpd.service

echo "Instalando o módulo do PHP no Apache Web Server"
sudo dnf install php php-common php-mysqli php-gd php-zip php-mcrypt php-json php-xml php-gettext php-curl php-intl -y

echo "Instalando a Página Inicial"
sudo dnf install wget -y
wget https://raw.githubusercontent.com/msmagnanijr/infnet-first-steps/main/iac/scripts/index.php -O /var/www/html/index.php

echo "Reiniciando o Apache Web Server"
sudo systemctl restart httpd.service

echo "Instalando MySQL/MariaDB"
sudo dnf install mysql-server -y

echo "Habilitando o MySQL Server no Boot"
sudo systemctl enable mariadb.service

echo "Iniciando o MySQL Server"
sudo systemctl start mariadb.service

echo "Agora execute o mysql_secure_installation manualmente para finalizar a configuração do MySQL Server"
