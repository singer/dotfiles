# Set up the prompt

autoload -Uz promptinit
promptinit
#prompt bart

setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

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

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/lib/go-1.9/bin


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
bindkey "^H" backward-char
bindkey '^n' backward-delete-char
bindkey '^q' kill-whole-line
bindkey '^u' undo 
bindkey '^Y' accept-search 
 



# Disable flow control (ctrl+s, ctrl+q) to enable saving with ctrl+s in Vim
stty -ixon -ixoff

PROMPT='%F{red}%n%f@%F{blue}%m%f %F{yellow}%1~%f 
%# '
#export PS1=''
#echo "hi"
