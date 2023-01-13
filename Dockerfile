FROM python:3.8
WORKDIR /flastapp_container
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./app ./app_container
CMD ["python3", "./app_container/main.py"]