# Projet de Prise en Main du Framework Django avec Docker

Ce projet a été créé pour explorer et prendre en main le framework Django, un framework de développement web en Python. Il couvre les étapes initiales pour démarrer un projet Django en utilisant Docker et mettre en place un environnement de développement isolé.

## Étapes d'Initialisation du Projet

1. **Installation des Prérequis :** Assurez-vous que Python 3, Django et Docker sont installés sur votre machine. Vous pouvez les installer en utilisant les commandes suivantes :

   ```bash
   sudo apt-get update
   sudo apt-get install python3 python3-pip docker
   ```

2. **Création de l'Environnement Virtuel :** Créez un environnement virtuel en utilisant la commande suivante :

   ```bash
   python3 -m venv venv
   ```

3. **Activation de l'Environnement Virtuel :** Activez l'environnement virtuel nouvellement créé à l'aide de la commande :

   ```bash
   source venv/bin/activate
   ```

4. **Installation de Django :** Une fois l'environnement virtuel activé, installez Django à l'intérieur de celui-ci :

   ```bash
   pip install django
   ```

5. **Initialisation du Projet Django :** Utilisez la commande `django-admin` pour créer un nouveau projet Django :

   ```bash
   django-admin startproject monprojet
   ```

6. **Migration de la Base de Données :** Accédez au répertoire du projet et effectuez les migrations initiales pour créer la base de données :

   ```bash
   cd monprojet
   python manage.py migrate
   ```

7. **Génération du fichier requirements.txt :** Créez un fichier `requirements.txt` contenant la liste des packages Python installés dans l'environnement virtuel :

   ```bash
   pip freeze > requirements.txt
   ```

8. **Configuration des Containers Docker :** Créez les fichiers `docker-compose.yml` et `Dockerfile` pour configurer les containers Docker pour le projet. Ces fichiers spécifient comment le projet doit être exécuté dans un environnement de conteneur Docker isolé.

9. **Lancement du Serveur Django avec Docker :** Activez l'environnement virtuel avec la commande `source venv/bin/activate`, puis lancez le serveur Django en utilisant Docker Compose :
   ```bash
   docker-compose up
   ```

## Objectif du Projet

L'objectif de ce projet est de fournir une introduction pratique à Django en utilisant Docker pour la gestion de l'environnement de développement. Il couvre les étapes essentielles pour mettre en place un projet Django, gérer la base de données et exécuter l'application dans un conteneur Docker isolé.

N'hésitez pas à explorer davantage Django en ajoutant des fonctionnalités, des modèles, des vues et des templates à votre projet. Bonne exploration et développement ! 🚀
