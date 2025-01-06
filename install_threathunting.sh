#!/bin/bash

echo "Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "Instalando dependencias..."
sudo apt install -y docker.io docker-compose git python3 python3-pip

echo "Clonando repositorios de herramientas..."
git clone https://github.com/TheHive-Project/TheHive.git
git clone https://github.com/MISP/MISP.git /var/www/MISP
git clone https://github.com/SigmaHQ/sigma.git

echo "Configurando Docker para TheHive..."
cd TheHive
docker-compose -f ../config/thehive-docker-compose.yml up -d

echo "Configurando Docker para MISP..."
cd ../MISP
docker-compose -f ../config/misp-docker-compose.yml up -d

echo "Instalación completa. Inicia sesión en las plataformas para configurarlas."
