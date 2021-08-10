# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/local/ANT/jackyuan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Custom user prompt
export PS1='[%n@%m]%~%#: '

# Custom user exports
export PATH="$PATH"
export PATH="~/bin:$PATH"
export PATH="$PATH:/usr/lib/dart/bin"

# Fix ssh agent forwarding stuff
export SSH_AUTH_SOCK=$HOME/.ssh_auth_sock

# Custom functions
function glog() {
	 git log "$@" --pretty='%Cred%h%Creset [%Cgreen%an %Creset %Cblue%ar%Creset]: %Cred%d%Creset %C(yellow)%s%Creset' --graph
}

# Custom user aliases
alias exercism='~/bin/exercism'
alias ll='ls -lhtr --color=auto'
alias lla='ls -lahtr --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias sls='screen -ls'
alias ss='screen -S'
alias sr='screen -dr' alias ehc='expand-hostclass'
alias vi='vim'
alias gp='git pull'
alias ga='git add'
alias gc='git commit'
alias resource='source ~/.zshrc'
alias suu='sudo apt update && sudo apt upgrade -y'
alias tas='tmux attach-session -t'
alias tls='tmux list-sessions'
alias tns='tmux new-session -s'
alias wk='cd ~/workspace/'

# Fix ctrl-s behaviour
stty -ixon

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring

# Exporting display for WSL2 X11 forwarding
#export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
#export LIBGL_ALWAYS_INDIRECT=1

# Created by `userpath` on 2021-02-19 07:22:48
export PATH="$PATH:/home/jack/.local/bin"

eval "$(register-python-argcomplete pipx)"
