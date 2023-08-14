# Use the official Python image as base
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Install Apache and its utilities
RUN apt-get update && apt-get install -y apache2 apache2-utils && apt-get clean

# Install postgre client and necessary system dependencies for psycopg2
RUN apt-get install -y libpq-dev postgresql-client

# Install apache2-dev package (required for mod-wsgi)
RUN apt-get install -y apache2-dev

# Install pip for Python 3
RUN apt-get install -y python3-pip

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install mod-wsgi using pip
RUN pip install mod-wsgi

# Install Django
RUN pip install Django
