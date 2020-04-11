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

# Fix ssh agent forwarding stuff
export SSH_AUTH_SOCK=$HOME/.ssh_auth_sock

# Custom functions
function glog() {
	 git log "$@" --pretty='%Cred%h%Creset [%Cgreen%an %Creset %Cblue%ar%Creset]: %Cred%d%Creset %C(yellow)%s%Creset' --graph
}

# Custom user aliases
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
alias tas='tmux attach-session -t'
alias tls='tmux list-sessions'
alias tns='tmux new-session -s'

# Fix ctrl-s behaviour
stty -ixon
