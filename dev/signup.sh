#!/usr/bin/env bash

# API key for my-playground-project-391323
API_KEY="AIzaSyBGRQhxXTFc-z_UB81xGziP6YUajLhqT3E"

curl \
  -X POST \
  -H 'Content-Type: application/json' \
  -d '{"returnSecureToken": true}' \
  "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=${API_KEY}" \
  | jq
