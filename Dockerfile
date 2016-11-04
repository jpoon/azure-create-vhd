FROM golang:1.7.1-alpine
MAINTAINER Jason Poon <docker@jasonpoon.ca>

ADD . /src
WORKDIR /src

RUN /src/docker-build.sh

ENTRYPOINT ["go", "run", "create_blank_vhd.go"]
