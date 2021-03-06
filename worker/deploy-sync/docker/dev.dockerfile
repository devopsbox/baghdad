FROM golang:1.8.3

RUN mkdir -p /go/src/github.com/marwan-at-work/baghdad/worker/deploy-sync && \
    go get -u github.com/marwan-at-work/gowatch && \
    curl -sSL https://get.docker.com/ | sh

WORKDIR /go/src/github.com/marwan-at-work/baghdad/worker/deploy-sync

CMD gowatch
