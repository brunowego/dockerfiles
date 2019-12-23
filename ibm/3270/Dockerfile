FROM docker.io/library/ubuntu:18.04

RUN apt-get update && \
    apt-get --no-install-recommends -y install c3270=3.6ga4-3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["c3270"]
