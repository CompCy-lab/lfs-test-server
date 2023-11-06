FROM golang:1.18 as lfs_build
MAINTAINER compcy-lab

WORKDIR /go/src/github.com/git-lfs/lfs-test-server

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

FROM alpine:latest
WORKDIR /go/src/github.com/git-lfs/lfs-test-server

COPY --from=lfs_build /go/src/github.com/git-lfs/lfs-test-server .

EXPOSE 9999

ENTRYPOINT ["./entrypoint.sh"]
