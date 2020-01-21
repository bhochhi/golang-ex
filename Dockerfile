FROM golang:1.11

USER ROOT

WORKDIR /go/src/app

COPY . ./
RUN go install
RUN ldd /go/bin/app | grep -q "not a dynamic executable"
