FROM rasa/rasa:1.10.3

USER root

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

EXPOSE 80
EXPOSE 443

CMD ["run", "--enable-api" ]