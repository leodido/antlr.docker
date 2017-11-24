.PHONY: deploy

TAG ?= latest

REGISTRY ?= docker.io

image = leodido/antlr

create: Dockerfile
ifndef VERSION
	$(error VERSION variable not set)	
endif
ifndef TAG
	$(eval override TAG = latest)
endif
	@docker build --build-arg ANTLR_VERSION=$(VERSION) -t $(image):$(TAG) .
	
deploy:
ifndef TAG
	$(eval override TAG = latest)
endif
	@docker push "$(REGISTRY)/$(image):$(TAG)"