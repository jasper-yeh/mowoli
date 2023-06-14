#!/bin/sh
curl --request DELETE 'http://localhost:8080/api/v1/orders/500003' \
  --include \
  --silent \
  --header  'Accept: application/json' \
  --header  'Content-Type: application/json' \
  --data ''
