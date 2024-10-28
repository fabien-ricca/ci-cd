#!/bin/sh


# On met à jour.
sudo apt update && sudo apt upgrade -y


# On installe les dépendance.
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y


# On ajoute la clé GPG de docker.
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg


# On ajoute le dépôt docker.
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# On installe docker.
sudo apt update
sudo apt install docker-ce -y


# installe docker-compose
sudo apt install docker-compose -y