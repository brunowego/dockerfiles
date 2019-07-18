FROM openjdk:8-jre-slim

RUN apt-get update && \
    apt-get --no-install-recommends -y install wget=1.20.1-1.1 unzip=6.0-23 && \
    rm -r /var/lib/apt/lists/*

ARG PKG_VERSION
ENV PKG_VERSION ${PKG_VERSION:-3.26.0.1}

WORKDIR /usr/local/h2o-${PKG_VERSION}

RUN wget -qO tmp.zip http://h2o-release.s3.amazonaws.com/h2o/rel-yau/1/h2o-${PKG_VERSION}.zip && \
    unzip tmp.zip -d .. && rm tmp.zip

RUN apt-get -y purge wget unzip

EXPOSE 54321

CMD ["/usr/local/openjdk-8/bin/java", "-jar", "./h2o.jar"]
