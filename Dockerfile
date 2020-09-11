FROM debian:buster-slim

RUN apt update && \
    apt install --no-install-recommends -y varnish varnish-modules && \
    rm -rf /var/lib/apt/lists/*

CMD ["varnishd", "-f", "/etc/varnish/default.vcl", "-F"]
