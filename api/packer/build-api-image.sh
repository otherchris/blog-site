#! /bin/bash

set -euo pipefail

GIT_SHA=$(git rev-parse --short head)
API_TOKEN=$(op get item no-ghosts-do-api-key --fields password)

GIT_SHA=$GIT_SHA API_TOKEN=$API_TOKEN packer build api_image.json

