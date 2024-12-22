.PHONY: build test clean docker-build

# 构建变量
BINARY_NAME=main
DOCKER_REGISTRY?="harbor.corp.angoo.io/"
APP_NAME?=timelogger
VERSION?=latest

clean:
	rm -rf bin/

build: clean
	CGO_ENABLED=0 GOOS=linux go build -o bin/$(BINARY_NAME) cmd/main.go

docker-build:
	docker build -t $(DOCKER_REGISTRY)/$(APP_NAME):$(VERSION) .

.DEFAULT_GOAL := build