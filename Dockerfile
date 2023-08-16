# Utilisez une image basée sur Python pour Django avec Apache
FROM python:3

# Mise à jour du système
RUN apt-get update

# Installez Apache et d'autres outils
RUN apt-get install -y apache2 apache2-utils

# Installez les paquets système nécessaires pour psycopg2 (PostgreSQL)
RUN apt-get install -y libpq-dev postgresql-client

# Installez Apache mod_wsgi pour exécuter Django
RUN apt-get install -y libapache2-mod-wsgi-py3

# Set the working directory
WORKDIR /django_project

# Copiez le fichier requirements.txt et installez les dépendances
COPY requirements.txt /django_project/
RUN pip install -r requirements.txt

# Exposez le port 80 d'Apache
EXPOSE 80

# Copiez le contenu du projet Django dans le conteneur
COPY . /django_project/

# Configurez Apache pour servir l'application Django
# COPY apache/django.conf /etc/apache2/sites-available/
# RUN a2ensite django
# RUN a2dissite 000-default

# Démarrez le serveur Apache en mode "foreground"
CMD ["apache2ctl", "-D", "FOREGROUND"]
