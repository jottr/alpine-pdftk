FROM alpine:3.8

LABEL org.opencontainers.image.authors="github.com/jottr"

RUN apk update && apk upgrade \
      && apk add pdftk

RUN mkdir /files
WORKDIR /files
VOLUME ["/files"]

ENTRYPOINT ["pdftk"]
