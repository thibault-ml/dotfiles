#!/usr/bin/env bash

# Attempt to correct mistyped dirs
shopt -s cdspell

# Attempt to expand mistyped dirs
shopt -s dirspell

# Do not attempt to show possibilities for empty lines
shopt -s no_empty_cmd_completion

# Ignore case in globs
shopt -s nocaseglob

# Multi-line commands become single lines
shopt -s cmdhist

# Fancier globbing support
shopt -s extglob

# Append history rather than overwriting it
shopt -s histappend

# Nobody needs to see control sequences when they're hit.
stty -echoctl

# Allow for ** to match multiple levels of directories
[[ $BASH_VERSION = 4* ]] && shopt -s globstar

# Color is nice
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# We don't need .DS_Store files in our tar archives
export COPY_EXTENDED_ATTRIBUTES_DISABLE=1
export COPYFILE_DISABLE=1

# Ignore duplicate commands in the command history
export HISTCONTROL=ignoredups

# Update the manpath for custom man commands.
export MANPATH=$MANPATH:$HOME/.man

# Make sure anything installed by Brew takes precedence over defaults
export PATH=/usr/local/bin:$PATH

# Add ~/.cmd to PATH so that I can use custom commands
export PATH=$HOME/.cmd:$PATH

# Do not truncate the history
export HISTFILESIZE=
export HISTSIZE=

# Add a timestamp to the history
export HISTTIMEFORMAT='%D %r :: '

source $HOME/.bash_alias
source $HOME/.bash_prompt
