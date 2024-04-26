#!/bin/bash

# Make a GET request to the _health endpoint and capture the response
response=$(curl -s http://localhost:5000/_health)

# Check if the response contains the message field with value "ok"
if [[ $response == *"\"message\": \"ok\""* ]]; then
  echo "Server is online. Exiting with status code 0."
  exit 0
else
  echo "Server is offline or returned an unexpected response. Exiting with status code 1."
  exit 1
fi
