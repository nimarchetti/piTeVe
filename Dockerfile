FROM alpine:latest
RUN apk update
RUN apk upgrade
RUN apk add --no-cache ca-certificates

MAINTAINER nimarchetti nik@incorporation.co.uk


RUN apk add --no-cache curl
RUN apk add libc6-compat

RUN apk update && apk add --no-cache tzdata
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


RUN apk add --no-cache bash busybox-suid su-exec

VOLUME /config
VOLUME /guide2go
VOLUME /root/.xteve
VOLUME /tmp/xteve

WORKDIR /src/xteve



COPY xteve .
COPY guide2go .

CMD ["./xteve"]
