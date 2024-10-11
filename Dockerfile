FROM python:3.12-alpine


RUN apk update -y && apk install awscli -y
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]