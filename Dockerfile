FROM golang:1.13.1-alpine

RUN apk update && apk add --no-cache build-base

WORKDIR $GOPATH/src/github.com/PumpkinSeed/placeholder
COPY . .

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/placeholder main.go
