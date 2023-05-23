# CLI-ChatGPT
Tool for interacting with ChatGPT directly from the terminal commandline.

## Installation
Start by cloning the repo
```
git clone https://github.com/Janseuwu/CLI-ChatGPT.git
```

Install requirements with your package-manager. Eg. apt
```
apt install requirements.txt
```

Run `setup.sh`
```
sh setup.sh
```

The setup will ask for a OpenAI API-key. You can get your key on [OpenAI's website](https://platform.openai.com/account/api-keys)

Lastly the following line to your rc-file.
```
export PATH="$HOME/.local/bin:$PATH"
```
Also run `exec <your_shell>` to reload the changes.

Thats it! Enjoy.

## Usage
To use the tool, simply put `gpt <message>`. Generally you want to put your messages in quotes (" or ').
```
gpt "Hey, did Epstein kill himself?"
```
Otherwise you can just run it with a single argument without quotes.
```
gpt Hey
```
To clear the chat session and start a new conversation, simply use
```
gpt clear_session
```

## TODO
- Keep track of the session history, perhaps a restart_session function.
- Have the API type out each word instead of dumping the answer.
- Ignore symlink creation if it already exists
