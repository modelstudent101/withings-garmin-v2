#!/usr/bin/env bash

SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)"

docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 --build-arg SSH_PRIVATE_KEY="$SSH_PRIVATE_KEY" -t withings-garmin .

docker tag jaroslawhartman:latest modelstudent101/jaroslawhartman:latest
