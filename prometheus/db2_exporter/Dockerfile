FROM docker.io/library/centos:7.6.1810 AS builder

ARG DB2_EXPORTER_VERSION

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN yum -y install ksh unzip

ADD ./ibm_data_server_driver_package_linuxx64_v11.5.tar.gz /opt/ibm/db2

ENV TERM xterm

RUN ksh /opt/ibm/db2/dsdriver/installDSDriver

RUN curl -kL https://github.com/glinuz/db2_exporter/releases/download/${DB2_EXPORTER_VERSION}/db2_exporter-linux-amd64.gz | \
      gunzip > /usr/local/bin/db2_exporter && chmod +x /usr/local/bin/db2_exporter


FROM docker.io/library/centos:7.6.1810

ENV IBM_DB_HOME='/opt/ibm/db2/dsdriver'

ENV LD_LIBRARY_PATH="$IBM_DB_HOME/lib"

COPY --from=builder /opt/ibm/db2/dsdriver $IBM_DB_HOME
COPY --from=builder /usr/local/bin/db2_exporter /usr/local/bin/db2_exporter

COPY ./default-metrics.toml /etc/db2_exporter/

ENTRYPOINT [ "db2_exporter" ]
