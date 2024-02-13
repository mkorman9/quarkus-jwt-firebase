#!/usr/bin/env bash

REFRESH_TOKEN="$1"

# API key for my-playground-project-391323
API_KEY="AIzaSyBGRQhxXTFc-z_UB81xGziP6YUajLhqT3E"

curl \
  -X POST \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -d "grant_type=refresh_token&refresh_token=${REFRESH_TOKEN}" \
  "https://securetoken.googleapis.com/v1/token?key=${API_KEY}" \
  | jq
