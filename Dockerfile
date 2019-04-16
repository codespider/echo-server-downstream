FROM python:3.7
MAINTAINER Karthikkannan "karthikkannan@gmail.com"
RUN pip3 install pipenv
WORKDIR /usr/src/app
COPY Pipfile ./
COPY Pipfile.lock ./
RUN set -ex && pipenv install --deploy --system
COPY . .
EXPOSE 8000
CMD [ "gunicorn", "-b0.0.0.0:9200", "echo.api:__hug_wsgi__" ]
