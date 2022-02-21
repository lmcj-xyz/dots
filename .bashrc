#
# ~/.bashrc
#

# PATH
export PATH=/home/lmcj/.local/bin:$PATH

# Prompt
PS1="\[\[\e[1;35m\]\W \[\e[1;32m\]: \[\e[m\]"

# If not running interactively, do not do anything
[[ $- != *i* ]] && return

# Bash completion source
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

# XDG compliant cleanup
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Colors in ls
alias ls="ls --color=auto"

# Verbose things
alias cp="cp -v"
alias mv="mv -v"

# Default programs
# Text editor
export VISUAL="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim"
export SUDO_EDITOR="/usr/bin/nvim"
# Terminal
export TERM="rxvt-unicode"
# Web browser
export BROWSER="/usr/bin/firefox"
# Document reader
export READER="/usr/bin/zathura"
# File browser
export FILE_BROWSER="/usr/bin/nnn"

# nnn configuration
export NNN_OPENER="xdg-open"
export NNN_COLORS="2136"
export NNN_TRASH="1"
## "e" to open text files in text editor instead of web browser
## "i" to show info of files
## "H" to show hidden files
alias nnn="nnn -eiH"

# Foolproof rm
## "i" to review deletion always
## "v" for verbose
alias rm="rm -iv"
# Verbose trash-put
alias trash="trash -v"
alias trash-put="trash-put -v"

# vi mode
set -o vi

# vimwiki
alias wiki="cd ~/Repositorios/wiki && nvim -c VimwikiIndex"

# XSecureLock configuration
export XSECURELOCK_SAVER=saver_blank xsecurelock

# Track the dots
alias dot="/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME"
