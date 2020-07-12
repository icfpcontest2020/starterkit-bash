#!/bin/bash

SERVER_URL=$1
PLAYER_KEY=$2

echo "ServerUrl: $SERVER_URL; PlayerKey: $PLAYER_KEY"
RESPONSE=$(curl -s -XPOST -d "$PLAYER_KEY" -s "$SERVER_URL")
EXIT_CODE=$?
echo "Server response: $RESPONSE"
if [ $EXIT_CODE != "0" ]; then echo "run error code: $EXIT_CODE"; fi
