FROM frolvlad/alpine-glibc
ARG HUGO_VERSION=0.104.3

RUN set -x && \
  apk add --update wget ca-certificates libstdc++

RUN wget -O hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz && \
    tar -xf hugo.tar.gz -C /usr/local/bin && \
    hugo version && rm hugo.tar.gz

RUN rm /var/cache/apk/*
