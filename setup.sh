#!/bin/sh
KEYFILE="${XDG_STATE_HOME:-$HOME/.local/state}/ChatGPT-CLI/openai_api_key"
HISTORYFILE="${XDG_STATE_HOME:-$HOME/.local/state}/ChatGPT-CLI/session_history"

# get api key from user
read -p 'Enter your OpenAI API key > ' -r API_KEY 

# Store API key
mkdir -p "$(dirname "$KEYFILE")"
echo "export OPENAI_API_KEY='$API_KEY'" > "$KEYFILE" # add the API key to the keyfile
printf "export USER_SESSION_HISTORY=\"\"\nexport ASSISTANT_SESSION_HISTORY=\"\"" > "$HISTORYFILE" # add the history strings to the history file

ln -sf $(realpath gpt) $HOME/.local/bin/gpt # create symlink to ~/.local/bin
