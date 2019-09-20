# Set up the prompt

autoload -Uz promptinit
promptinit
#prompt bart

#setopt histignorealldups sharehistory

##############################################################################
## History Configuration
###############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed


# Use modern completion system
autoload -Uz compinit
compinit

#zstyle ':completion:*' auto-description 'specify: %d'
#zstyle ':completion:*' completer _expand _complete _correct _approximate
#zstyle ':completion:*' format 'Completing %d'
#zstyle ':completion:*' group-name ''
#zstyle ':completion:*' menu select=2
#eval "$(dircolors -b)"
#zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors ''
#zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
#zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle ':completion:*' menu select=long
#zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
#zstyle ':completion:*' use-compctl false
#zstyle ':completion:*' verbose true
#
#zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
#zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
alias ls="ls --color=auto"

autoload -U edit-command-line
zle -N edit-command-line

#bindkey "^I" expand-or-complete 
bindkey "^O" edit-command-line 
bindkey "^T" delete-char 
#bindkey "^T" backward-kill-line
bindkey "^S" kill-line
bindkey "^J" down-history
bindkey "^K" up-history
bindkey "^L" forward-char
bindkey "^H" backward-word
bindkey '^n' backward-delete-char
bindkey '^q' kill-whole-line
bindkey '^u' undo 
bindkey '^Y' accept-search 

stty -ixon -ixoff

PROMPT='%F{red}%n%f@%F{blue}%m%f %F{yellow}%1~%f 
%# '

export GOPATH=$HOME/go
export MYGO=$GOPATH/src/github.com/singer
export PATH=$PATH:$GOPATH/bin:/usr/lib/go-1.9/bin:$HOME/Downloads/pycharm/bin:$HOME/opt/bin
export VIRTUALENV_PYTHON=/usr/bin/python3
export WORKON_HOME=/home/singer/envs
source /usr/local/bin/virtualenvwrapper.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

