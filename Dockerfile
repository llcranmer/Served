FROM golang:1.9.2

MAINTAINER Paul Cranmer

ENV SOURCES /go/src/github.com/paulcranmer/test-app

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=0 go install

ENV PORT 8080

EXPOSE 8080

ENTRYPOINT test-app
