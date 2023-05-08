#!/usr/bin/env bash

set -a; . ./.env; set +a

docker buildx build --push --platform linux/arm64,linux/amd64 --tag ${DOCKER_USERNAME}/postgresql-timescaledb-postgis:latest ./
