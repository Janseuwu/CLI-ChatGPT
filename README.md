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

Lastly add gpt to your path by adding
```
export PATH="$HOME/.local/bin:$PATH"
```
To your shells rc-file. Also run `exec <your_shell>` to reload it.

Thats it! Enjoy.

## TODO
- Keep track of the session history, perhaps a restart_session function.
- requirements.txt file (jq)
- Installation description
- Ignore symlink creation if it already exists
