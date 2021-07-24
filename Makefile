IMAGE_NAME := plex
IMAGE_TAG := latest
REPO_NAME := travissouth

.PHONY: all build-push

all: ;

build-push:
	docker buildx build --platform linux/amd64,linux/arm64 -t "$(REPO_NAME)/$(IMAGE_NAME):$(IMAGE_TAG)" --push . -f Dockerfile.arm64
