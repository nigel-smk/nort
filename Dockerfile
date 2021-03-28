FROM python:3.8

WORKDIR /code

COPY app/ .

RUN pip install -r requirements.txt

WORKDIR /code/src

RUN apt-get update
RUN apt-get install fdupes

CMD [ "sh" ] 