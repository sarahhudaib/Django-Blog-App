#python version
FROM python:3.9

#environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#SET WORK DIRECTORY
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/

#install dependecies
RUN pip freeze > requirements.txt

COPY . /code/