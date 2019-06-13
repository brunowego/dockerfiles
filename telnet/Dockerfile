FROM alpine:3.9

ARG PKG_VERSION
ENV PKG_VERSION ${PKG_VERSION:-1.29.3-r10}

RUN apk add --no-cache busybox-extras==${PKG_VERSION}

ENTRYPOINT ["/usr/bin/telnet"]
