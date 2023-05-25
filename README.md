# CLI-ChatGPT
Tool for interacting with ChatGPT directly from the terminal commandline. It is written in pure shell because we hate fun and love pain.

* [Installation](#installation)
* [Usage](#usage)
* [TODOs](#todo)

## Installation
Start by cloning the repo
```
git clone https://github.com/Janseuwu/CLI-ChatGPT.git
```

Install requirements with your package-manager. Eg. apt
```
xargs sudo apt install <essentials.txt -y
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

Thats it! Enjoy!

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
- Fix: First message in a new session is always `null`
- Fix: Ignore symlink creation if it already exists
- Rewrite a bit so it's more effecient, currently doing a lot of unnecessary steps. 
- Have the API type out each word instead of dumping the answer.
