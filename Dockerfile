FROM alpine:3.20

RUN apk add --no-cache \
	brotli \
	pigz \
	zstd \
	bash

COPY ./precompress /precompress

VOLUME /compress-dir

WORKDIR /compress-dir

ENTRYPOINT ["/precompress"]
