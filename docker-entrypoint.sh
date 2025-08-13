#!/bin/sh

# git
git config user.email $GIT_EMAIL
git config user.name $GIT_USERNAME
git config --global --add safe.directory /workspace 

# set env in settings.json
mkdir -p /workspace/.gemini
cp /workspace/gemini_settings.json /workspace/.gemini/settings.json
sed -i "s|\${DB1_USER}|${DB1_USER}|g" /workspace/.gemini/settings.json
sed -i "s|\${DB1_PASS}|${DB1_PASS}|g" /workspace/.gemini/settings.json
sed -i "s|\${DB1_ENDPOINT}|${DB1_ENDPOINT}|g" /workspace/.gemini/settings.json
sed -i "s|\${DB1_PORT}|${DB1_PORT}|g" /workspace/.gemini/settings.json
sed -i "s|\${DB1_DATABASE_NAME}|${DB1_DATABASE_NAME}|g" /workspace/.gemini/settings.json

tail -f /dev/null

