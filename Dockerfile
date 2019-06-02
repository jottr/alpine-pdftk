FROM alpine:3.8

MAINTAINER github.com/jottr

RUN apk update && apk upgrade \
      && apk add pdftk

RUN mkdir /files
WORKDIR /files
VOLUME ["/files"]

ENTRYPOINT ["pdftk"]
