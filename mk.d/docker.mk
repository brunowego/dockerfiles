SHELL := /bin/sh

DOCKER_BUILD_OPTS ?=
DOCKER_REGISTRY ?= docker.io
DOCKER_REPO := brunowego

.PHONY: docker/build
docker/build:
	@docker build $(DOCKER_BUILD_OPTS) \
		-t $(DOCKER_REGISTRY)/$(DOCKER_REPO)/$(DOCKER_IMAGE):$(DOCKER_TAG) \
		-t $(DOCKER_REGISTRY)/$(DOCKER_REPO)/$(DOCKER_IMAGE):latest .
	@$(MAKE) docker/clean

.PHONY: docker/push
docker/push:
	@docker push $(DOCKER_REPO)/$(DOCKER_IMAGE):$(DOCKER_TAG)
	@docker push $(DOCKER_REPO)/$(DOCKER_IMAGE):latest

.PHONY: docker/clean
docker/clean:
	@docker image prune -f
