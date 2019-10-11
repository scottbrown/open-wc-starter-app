FROM node:11-alpine
MAINTAINER Scott Brown

ENV CHROME_BIN="/usr/bin/chromium-browser"
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true

RUN apk update && \
    apk upgrade && \
    apk add --no-cache chromium

RUN mkdir /src

ADD . /src
WORKDIR /src

RUN npm install

