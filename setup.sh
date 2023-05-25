#!/bin/sh
KEYFILE="${XDG_STATE_HOME:-$HOME/.local/state}/ChatGPT-CLI/openai_api_key"
HISTORYFILE="${XDG_STATE_HOME:-$HOME/.local/state}/ChatGPT-CLI/session_history"

# ask about gpt-model
# need to rewrite some code, so i commented this out
#echo "What GPT-model would you like to use? (GPT-4 API needs approval on waitlist)"
#read -p '3.5/4 > ' -r GPT_MODEL
#echo ""

# get api key from user
echo "Enter your OpenAI API-key here."
read -p 'Begins with "sk" > ' -r API_KEY
echo ""

# Store API key
mkdir -p "$(dirname "$KEYFILE")"
echo "export OPENAI_API_KEY='$API_KEY'" > "$KEYFILE" # add the API key to the keyfile
printf "export USER_SESSION_HISTORY=\"\"\nexport ASSISTANT_SESSION_HISTORY=\"\"" > "$HISTORYFILE" # add the history strings to the history file

echo "Creating symlink from git-repo to "$HOME"/.local/bin/gpt"
ln -sf $(realpath gpt) $HOME/.local/bin/gpt # create symlink to ~/.local/bin
echo ""

echo "Setup done"
