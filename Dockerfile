FROM python:3.11.1-slim

COPY . /app
WORKDIR /app 

RUN python -m venv venv /otp/venv

RUN pip install pip --upgrade &&\
    /otp/venv/bin/pip install -r requirements.txt &&\
    chmod +x entrypoint.sh && \
    chmod +x migrate.sh

RUN sh /app/migrate.sh


CMD [ "/app/entrypoint.sh" ]
