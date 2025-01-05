#!/usr/bin/env bash

# 设置 Docker Registry
export DOCKER_REGISTRY="harbor.corp.angoo.io"
export PUSH_CONTAINER_REGISTRY="harbor.corp.angoo.io"
export DOCKER_REGISTRY_ORG="timelogger"

# 其他变量
export APP_NAME="timelogger"
export DOCKERFILE_PATH="Dockerfile" 

# 在chart上床到harobor仓库时可能用到，还未验证
# 认证信息
export JX_REPOSITORY_USERNAME=admin
export JX_REPOSITORY_PASSWORD=Harbor12345

# 仓库名称 (可选,默认为 "release-repo")
export JX_CHART_REPOSITORY=my-harbor-repo

# 仓库 URL
export JX_CHART_REPOSITORY_URL=harbor.example.com/helm