FROM python:3.8-slim-buster

WORKDIR /app

COPY ./* /app/
COPY ./templates/* /app/templates/

RUN python3 -m pip install flask

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]
