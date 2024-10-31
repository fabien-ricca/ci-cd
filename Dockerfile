# Utilise une image Debian minimale
FROM debian:stable-slim

# Mettre à jour les paquets et installer SSH
RUN apt-get update && apt-get install -y openssh-server && rm -rf /var/lib/apt/lists/*

# Configuration utilisateur root
RUN echo 'root:root123' | chpasswd

# Modifier le fichier de configuration SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config

# Créer un répertoire pour le processus SSH
RUN mkdir /var/run/sshd

# Exposer le port SSH
EXPOSE 2222

# Démarrer le service SSH
CMD ["/usr/sbin/sshd", "-D"]
