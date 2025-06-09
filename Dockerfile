FROM python: 3.10

WORKDIR .

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8080

ENV NAME minesweeper

CMD ["python", "app/app.py"]
