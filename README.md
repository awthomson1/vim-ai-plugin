# vim-ai-plugin
A ChatGPT/OpenAI plugin for Vim and Bash

## About
These are two helper utilities for Linux terminal users:
* A ChatGPT command-line tool: this lets you make ChatGPT calls straight from the terminal.
* A Vim plugin: this uses the above tool and lets you provide prompts to ChatGPT based on the currently opened file.

## Pre-Requisites
* An OpenAI API Key (if you don't have one, you'll need to sign up for one here: TODO)

## Quick-Start
Run the ```install.sh``` script to automatically do all the steps below
```
chmod a+x install.sh
./install.sh
```

## Install 'ai' command-line tool
Copy the ai script in this repo to somewhere on the $PATH (e.g. /usr/bin/) and make it executable.
```
chmod a+x ai
sudo cp ai /usr/bin/ai
```
Once that's done, edit your ```~/.bashrc``` to automatically populate the OPENAI_API_KEY environment variable.  Add the following line to the end of the file:
```
export OPENAI_API_KEY="<Your API key>"
```
You'll need to restart your shell session to pick up the change.
Test the tool by executing it, passing the prompt as the only argument:
```
ai "Generate a CSV file with 5 entries and the fields: firtname, lastname and age"
```
You can also use this tool to run a prompt against a file.  An example showing this is below.  This checks the ai script for any errors:
```
ai "Check the following script for errors: `cat ai`
```
## Install the Vim plugin
First download the vim-plug plug-in:
```
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Copy the ai-plugin plug-in to the ```~/.vim/``` drectory
```
cp -r ai-plugin ~/.vim/
```
Edit the ```~/.vimrc``` file to add the plugin.  Add this line between the plug@begin and plug#end lines.
```
Plug '~/.vim/ai-plugin'
```
If you're starting from an empty ```.vimrc``` file, it should look like this:
```
call plug#begin()

Plug '~/.vim/ai-plugin'

call plug#end()
```
