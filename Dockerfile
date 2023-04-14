FROM python:3.8-bullseye
COPY . .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Используемый порт сервером
EXPOSE 9555

CMD ["python", "-u", "manage.py", "runserver", "0:9555", "--insecure"]