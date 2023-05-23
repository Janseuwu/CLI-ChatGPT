#!/bin/bash
echo "Setup running"

KEYFILE="${XDG_STATE_HOME:-$HOME/.local/state}/ChatGPT-CLI/openai_api_key"

# get api key from user
read -p 'Enter your OpenAI API key > ' -r API_KEY 

# Store API key
echo "Storing API-key"
mkdir -p "$(dirname "$KEYFILE")"
echo "export OPENAI_API_KEY='$API_KEY'" > "$KEYFILE" # add the API key to the keyfile

echo "Creating symlink from git-repo to ~/.local/bin/gpt"
ln -s $(realpath gpt) $HOME/.local/bin/gpt # create symlink to ~/.local/bin

echo "Setup done"
