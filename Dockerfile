#FROM python:3.10

#WORKDIR /app

#COPY . /app

#RUN pip install -r requirements.txt

#EXPOSE 8080

#CMD ["python", "app/app.py"]


FROM python:3.10.12-slim

WORKDIR /app

COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8080

CMD ["python", "app/app.py"]
