#!/bin/sh

# git
git config user.email $GIT_EMAIL
git config user.name $GIT_USERNAME
git config --global --add safe.directory /app 

# set env in settings.json
mkdir -p /app/.gemini
cp /workspace/gemini_settings.json /app/.gemini/settings.json
sed -i "s|\${DB1_USER}|${DB1_USER}|g" /app/.gemini/settings.json
sed -i "s|\${DB1_PASS}|${DB1_PASS}|g" /app/.gemini/settings.json
sed -i "s|\${DB1_ENDPOINT}|${DB1_ENDPOINT}|g" /app/.gemini/settings.json
sed -i "s|\${DB1_PORT}|${DB1_PORT}|g" /app/.gemini/settings.json
sed -i "s|\${DB1_DATABASE_NAME}|${DB1_DATABASE_NAME}|g" /app/.gemini/settings.json

tail -f /dev/null

