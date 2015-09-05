Simple docker/django-pandas image
=================================

Simple Django image for development based on ubuntu:trusty

Django version 1.8.4

You have to:
  1. import the /app directory from the host (`-v /srv/app:/app`)
  2. redirect the port 80 from the host to the port 8000 of the Django development server
  3. start the server manually to avoid docker restarting on crash (`docker exec -d img./runserver 0.0.0.0:8000`)

You may want to link the image to a mysql database (`--link mysql:mysql`), the default is sqlite3

`docker run --name django -v /srv/app:/app -p 80:8000 -d loobaz/django-dev`

Image available on DockerHub: https://registry.hub.docker.com/u/loobaz/django-dev
