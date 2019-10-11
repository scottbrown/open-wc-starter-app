FROM node:10-alpine
MAINTAINER Scott Brown

ENV CHROME_BIN="/usr/bin/chromium-browser"

RUN mkdir /src

ADD . /src
WORKDIR /src

RUN npm install

