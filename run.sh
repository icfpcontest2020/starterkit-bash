#!/bin/bash

set -e

SERVER_URL=$1
PLAYER_KEY=$2

echo "ServerUrl: $SERVER_URL; PlayerKey: $PLAYER_KEY"
curl -s -XPOST -d "$PLAYER_KEY" -s "$SERVER_URL"
