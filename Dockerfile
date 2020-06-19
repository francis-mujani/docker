FROM python:3.8.2

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN pip install -r /app/requirements.txt

EXPOSE 5000

CMD ["python", "server.py"]

