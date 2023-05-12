FROM python:3.9

RUN mkdir /app

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip3 install --upgrade pip

COPY . /app/

RUN pip3 install -r requirements.txt

EXPOSE 8000

CMD python3 manage.py runserver 0.0.0.0:8000