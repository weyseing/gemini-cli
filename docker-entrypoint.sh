#!/bin/sh

# set env in settins.json
mkdir -p /workspace/.gemini
cp /workspace/gemini_settings.json /workspace/.gemini/settings.json
sed -i "s/\$MCP_OBD_EMAIL/$MCP_OBD_EMAIL/g" "/workspace/.gemini/settings.json"
sed -i "s/\$MCP_OBD_KEY/$MCP_OBD_KEY/g" "/workspace/.gemini/settings.json"

tail -f /dev/null

