---------------------------------------- JOB 01 ----------------------------------------
Créer une vm avec virtual box ou utiliser directement un environnement linux.
Jouer le script 'install_docker.sh'.



---------------------------------------- JOB 02 ----------------------------------------
Jouer la commande :
sudo docker run hello-world



---------------------------------------- JOB 03 ----------------------------------------
Se positionner à la racine du Dockerfile, et jouer les commandes :
sudo docker build -t hello-world .
sudo docker run hello-world



---------------------------------------- JOB 04 ----------------------------------------
Job testé et reussi via un VPS hebergé sur Amazon car problèmes de vm en local.
Jouer les commandes suivantes sur le vps :
sudo docker build -t ssh-server .
sudo docker run -d -p 2222:2222 --name ssh-container ssh-server

Jouer la commande suivante sur une autre machine :
ssh root@adresse-ip -p 2222


