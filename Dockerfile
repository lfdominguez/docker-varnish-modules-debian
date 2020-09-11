FROM debian:buster-slim

LABEL maintainer Luis Felipe Domínguez Vega <ldominguezvega@gmail.com>

RUN apt update && \
    apt install --no-install-recommends -y varnish varnish-modules && \
    rm -rf /var/lib/apt/lists/*

CMD ["varnishd", "-f", "/etc/varnish/default.vcl", "-F"]
