#!/bin/bash

curl "http://localhost:4741/reservations" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
