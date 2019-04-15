FROM alpine:3.5
MAINTAINER Jiang Fengbing "jiangfengbing@gmail.com"

RUN apk update && apk add tzdata ca-certificates && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    rm -rf /var/cache/apk/* ; mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2
