# Utilise une image Debian minimale
FROM debian:stable-slim

# Installe les paquets nécessaires
RUN echo "Hello, World!" > /hello.txt

# Commande exécutée au démarrage du conteneur
CMD ["cat", "/hello.txt"]
