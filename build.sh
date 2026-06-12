#!/bin/bash
docker build --progress=plain \
  --build-arg=FRAPPE_PATH=https://github.com/frappe/frappe \
  --build-arg=FRAPPE_BRANCH=version-15 \
  --build-arg=PYTHON_VERSION=3.11.9 \
  --build-arg=NODE_VERSION=18.20.2 \
  --secret=id=apps_json,src=apps.json \
  --tag=ghcr.io/puzzo-dev/opscloud/opsnext0626.1:latest \
  --file=images/custom/Containerfile .
