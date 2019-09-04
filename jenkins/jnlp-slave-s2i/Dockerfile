ARG DOCKER_TAG

FROM jenkins/jnlp-slave:${DOCKER_TAG}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ARG DOCKER_GID=999

ENV DOCKER_VERSION=19.03.1 \
    S2I_VERSION=1.1.14 \
    S2I_HASH=874754de

USER root

RUN curl "https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz" | \
    tar -xzC /usr/local/bin --strip-components 1 docker/docker && \
    groupadd -g "$DOCKER_GID" -r docker && \
    usermod -aG users jenkins && \
    usermod -aG docker jenkins

RUN curl -L "https://github.com/openshift/source-to-image/releases/download/v${S2I_VERSION}/source-to-image-v${S2I_VERSION}-${S2I_HASH}-linux-amd64.tar.gz" | \
    tar -xzC /usr/local/bin --strip-components 1 && \
    chmod +x /usr/local/bin/s2i

USER jenkins
