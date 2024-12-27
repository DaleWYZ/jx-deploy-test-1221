#!/usr/bin/env bash

# 设置 Docker Registry
export DOCKER_REGISTRY="harbor.corp.angoo.io"
export PUSH_CONTAINER_REGISTRY="harbor.corp.angoo.io"
export DOCKER_REGISTRY_ORG="timelogger"

# 其他变量
export APP_NAME="timelogger"
export DOCKERFILE_PATH="Dockerfile"

# 添加版本号生成规则
export VERSION=$(date +%Y%m%d)-$(git rev-parse --short HEAD)
# 或者使用时间戳作为版本号
# export VERSION=$(date +%Y%m%d.%H%M%S) 