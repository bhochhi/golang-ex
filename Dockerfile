FROM golang:1.11

USER ROOT

RUN mkdir -p /go/src/github.com/bhochhi/golang-ex
WORKDIR /go/src/github.com/bhochhi/golang-ex

COPY . /go/src/github.com/bhochhi/golang-ex
RUN go build

CMD ["./golang-ex"]
