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

## How to use it
### 'ai' command-line tool
Usage:
```ai "<prompt>"```
Examples:
```ai "Write a haiku about the Linux terminal"```
```ai "Create a CSV file with 10 items containing name, age and height" > people.csv```
```ai "Sort the following data by age" $(cat people.csv)```
### 'ai' Vim plugin
In *command-mode* enter AI (i.e. :AI<enter>), and enter your prompt.  You'll then be asked whether you want to [O]verwrite the current contents, or [A]ppend the generated response to the end of the current text.

## Install the 'ai' command-line tool manually
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
## Install the Vim plugin mahually
First download the *vim-plug* plug-in:
```
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Copy the *ai-plugin* plug-in to the ```~/.vim/``` drectory
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
