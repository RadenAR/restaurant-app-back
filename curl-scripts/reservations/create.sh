#!/bin/bash

curl "http://localhost:4741/reservations" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "reservation": {
      "people": "'"${PEOPLE}"'",
      "date": "'"${DATE}"'",
      "time": "'"${TIME}"'",
      "restaurant_id": "'"${REST}"'"
    }
  }'

echo
