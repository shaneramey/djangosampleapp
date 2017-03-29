# Django Sample Application

Sets up a bare Django install with a mysql back-end

# Using
- run `docker-compose up --build`

# Files in this repo:
- Dockerfile
- docker-compose.yaml # run docker-compose up 
- .gitignore # includes ve/
- djangosampleapp # Django project

# Steps to create python app
- `python3 -m venv ve`
- `source ve/bin/activate`
- `pip install -r requirements.txt`
- `django-admin startproject djangosampleapp`

