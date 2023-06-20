#!/bin/bash 
#this is bash script
SUPERUSER_EMAIL = ${DJANGO_SUPERUSER_EMAIL:-"ahmedismail332211@gmail.com"}
cd /app/

/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/python manage.py createsuperuser --email $SUPERUSER_EMAIL --noinput || true
