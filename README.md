# vim-ai-plugin
A ChatGPT/OpenAI plugin for Vim and Bash

## About
These are two helper utilities for Linux terminal users:
* A ChatGPT command-line tool: this lets you make ChatGPT calls straight from the terminal.
* A Vim plugin: this uses the above tool and lets you provide prompts to ChatGPT based on the currently opened file.

## Pre-Requisites
* An OpenAI API Key (if you don't have one, you'll need to sign up for one here: TODO)

## Install 'ai' command-line tool
Copy the ai script in this repo to somewhere on the $PATH (e.g. /usr/bin/) and make it executable.
```
chmod a+x ai
sudo cp ai /usr/bin/ai
```
Once that's done, edit your ```~/.bashrc``` to automatically populate the OPENAI_API_KEY environment variable.  Add the following line to the end of the file:
```
export OPENAI_API_KEY="<Your API key>"

## Install the Vim plugin


