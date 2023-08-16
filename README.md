#PROJET ELECTION VERSION PYTHON
1- Run this command for initialize the container for the project
run docker-compose up --build

2- Then, run the following command to get the list of container
docker-comose ps

3- Run the following commande to navigate to the django container
docker exec -it <constainer_name_on_the_services_in_docker-compose_file> bash
<!-- ex: election_python_version_django-app_1  -->

4- To initialize the project for the first time, run the next command
django-admin startproject <main_project_folder_namemod-wsgi>
