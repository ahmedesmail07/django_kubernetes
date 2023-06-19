"""
WSGI config for dj_kube project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/howto/deployment/wsgi/
"""


import os
import pathlib #new

import dotenv #new
from django.core.wsgi import get_wsgi_application

CURRENT_DIR = pathlib.Path(__file__).resolve().parent #new
BASE_DIR = CURRENT_DIR.parent #new
ENV_FILE_PATH = BASE_DIR / ".env" #new


os.environ.setdefault("DJANGO_SETTINGS_MODULE", "dj_kube.settings")

dotenv.read_dotenv(ENV_FILE_PATH) #new

application = get_wsgi_application()
