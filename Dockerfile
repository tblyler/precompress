FROM alpine:3.13

RUN apk add --no-cache \
	brotli \
	pigz \
	zstd \
	bash \
	the_silver_searcher

COPY ./precompress /precompress

VOLUME /compress-dir

WORKDIR /compress-dir

ENTRYPOINT ["/precompress"]
