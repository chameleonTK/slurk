#!/usr/bin/env bash
LAYOUT_ID=$(scripts/create_layout.sh examples/simple_layout.json | jq .id)
ROOM_ID=$(scripts/create_room.sh $LAYOUT_ID | jq .id) 
TOKEN=$(scripts/create_room_token.sh $ROOM_ID examples/message_permissions.json | jq -r .id)
echo $TOKEN