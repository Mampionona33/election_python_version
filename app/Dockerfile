FROM python:3

ENV PYTHONUNBUFFERED=1

WORKDIR /election_python_version

# RUN python -m venv election_python

COPY . .

RUN pip install --upgrade pip setuptools && \
    pip install -r requirements.txt

# RUN /election_python_version/bin/pip install --upgrade pip setuptools && \
#     /election_python_version/bin/pip install -r requirements.txt

EXPOSE 8000
