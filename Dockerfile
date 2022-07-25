FROM alpine:3.8

LABEL org.opencontainers.image.authors="github.com/jottr"

RUN apk add --no-cache pdftk

RUN mkdir /files
WORKDIR /files
VOLUME ["/files"]

ENTRYPOINT ["pdftk"]
