SHELL := /bin/sh

DOCKER_BUILD_OPTS ?=
DOCKER_REPO := brunowego

.PHONY: docker/build docker/push

docker/build:
	docker build $(DOCKER_BUILD_OPTS) \
		-t $(DOCKER_REPO)/$(DOCKER_IMAGE):$(DOCKER_TAG) \
		-t $(DOCKER_REPO)/$(DOCKER_IMAGE):latest .

docker/push:
	docker push $(DOCKER_REPO)/$(DOCKER_IMAGE):$(DOCKER_TAG)
	docker push $(DOCKER_REPO)/$(DOCKER_IMAGE):latest
