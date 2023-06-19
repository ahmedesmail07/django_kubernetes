#This is bash script 
APP_PORT=${PORT:-8000}
cd /app/
/otp/venv/bin/gunicorn --worker-tmp-dir /dev/shm/ dj_kube.wsgi:application
--bind "0.0.0.0:${APP_PORT}"