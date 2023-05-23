#!/bin/bash
echo "Setup running"
echo ""

KEYFILE="${XDG_STATE_HOME:-$HOME/.local/state}/ChatGPT-CLI/openai_api_key"

# ask about gpt-model
echo "What GPT-model would you like to use? (GPT-4 API needs approval on waitlist)"
read -p '3.5/4 > ' -r GPT_MODEL
echo ""

# get api key from user
echo "Enter your OpenAI API-key here."
read -p 'Begins with "sk" > ' -r API_KEY
echo ""

# Store API key
echo "Storing API-key"
mkdir -p "$(dirname "$KEYFILE")"
echo "export OPENAI_API_KEY='$API_KEY'" > "$KEYFILE" # add the API key to the keyfile
echo ""

echo "Creating symlink from git-repo to ~/.local/bin/gpt"
ln -s $(realpath gpt) $HOME/.local/bin/gpt # create symlink to ~/.local/bin
echo ""

echo "Setup done"
