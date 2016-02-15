FROM golang:1.5
MAINTAINER Timothy Chung <timchunght@gmail.com>
ADD . /go/src/github.com/thoas/picfit
WORKDIR /go/src/github.com/thoas/picfit
RUN make build && mkdir -p /tmp/image_cache
CMD ["/go/src/github.com/thoas/picfit/bin/picfit", "-c", "/go/src/github.com/thoas/picfit/deploy/config.json"]
