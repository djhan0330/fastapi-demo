FROM python:3.11-alpine3.20
#WORKDIR /codes
WORKDIR /app
COPY ./requirements.txt /code/requirements.txt
RUN apk add musl-dev mariadb-connector-c-dev gcc
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
#COPY ./app /code/app
COPY ./app /app
#CMD ["fastapi", "run", "uvicorn", "main.py", "--port", "80", "--workers", "4"]
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--workers", "4"]
