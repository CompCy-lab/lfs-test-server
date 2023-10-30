FROM golang:1.18
MAINTAINER GitHub, Inc.

WORKDIR /go/src/github.com/git-lfs/lfs-test-server

COPY . .

RUN go build

EXPOSE 9999

ENTRYPOINT ["./entrypoint.sh"]
