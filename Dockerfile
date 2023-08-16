# Use the official Python image as base
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Install pip for Python 3
RUN python -m venv app

# Install Apache and its utilities
RUN apt-get update && apt-get install -y apache2 apache2-utils && apt-get clean

# Install postgre client and necessary system dependencies for psycopg2
RUN apt-get install -y libpq-dev postgresql-client

# Install apache2-dev package (required for mod-wsgi)
RUN apt-get install -y apache2-dev

# Install dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Install mod-wsgi using pip
RUN pip install mod-wsgi
