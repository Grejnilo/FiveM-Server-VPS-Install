#!/bin/sh

echo "-------------------------------------------------------------"
echo "                                                             "
echo "                  created by adeuszx © 2023                  "
echo "                                                             "
echo "-------------------------------------------------------------"

sudo apt update -y
sudo apt install apache2 -y
sudo apt install mysql-server -y

echo "-------------------------------------------------------------" 
echo "                                                             "
echo "            Podaj nazwe uzytkownika bazy danych              "
echo "                                                             "
echo "-------------------------------------------------------------"

read name

echo "-------------------------------------------------------------"
echo "                                                             "
echo "                Podaj haslo do bazy danych                   "
echo "                                                             "
echo "-------------------------------------------------------------"

read password

echo "-------------------------------------------------------------"
echo "                                                             "
echo "                      Instalacja PHP...                      "
echo "                                                             "
echo "-------------------------------------------------------------"

sudo apt-get install software-properties-common && sudo add-apt-repository ppa:ondrej/php && sudo apt-get update && sudo apt install php7.4 libapache2-mod-php7.4 php7.4-curl php7.4-intl php7.4-zip php7.4-soap php7.4-xml php7.4-gd php7.4-mbstring php7.4-bcmath php7.4-common php7.4-xml php7.4-mysqli && sudo a2enmod php7.4 && sudo a2enmod rewrite && sudo service apache2 restart

echo "-------------------------------------------------------------"
echo "                                                             "
echo "                    Instalacja PhpMyAdmin...                 "
echo "                                                             "
echo "-------------------------------------------------------------"

sudo apt-get install phpmyadmin && sudo service apache2 restart && sudo ln -s /usr/share/phpmyadmin /var/www/html/pma

echo "-------------------------------------------------------------"
echo "                                                             "
echo "                   Instalacja serwera...                     "
echo "                                                             "
echo "-------------------------------------------------------------"

cd /home && sudo mkdir fivem2 && cd fivem2 && sudo mkdir resources && sudo wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/6362-4d0535f47951790580279415aec0c68e133ba705/fx.tar.xz 
sudo tar -xf fx.tar.xz && sudo rm fx.tar.xz && cd /home/fivem2 && sudo screen -dSm tx ./run.sh +set serverProfile dev_server +set txAdminPort 40126

echo "-------------------------------------------------------------"
echo "                                                             "
echo "                Instalacja pobiegła pomyślnie!               "
echo "    Twój serwer na platformie FiveM został juz postawiony!   "
echo "                                                             "
echo "                    http://adeuszx.xyz                       "
echo "                                                             "
echo "-------------------------------------------------------------"