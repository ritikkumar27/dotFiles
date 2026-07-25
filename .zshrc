export TERM=xterm-256color
eval "$(starship init zsh)"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# HISTORY
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt INTERACTIVE_COMMENTS

# Color support
autoload -Uz colors
colors

# Better completion
autoload -Uz compinit
compinit

# Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias ll="eza -lah --icons"
alias ls="eza --icons"
alias la="eza -a --icons"
alias lt="eza --tree --icons"
alias cat="batcat"

alias ..="cd .."
alias ...="cd ../.."

alias fd="fdfind"

alias dc="docker compose"
alias dps="docker ps"
alias di="docker images"
alias dlog="docker logs"

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"

# new alias
alias update='sudo apt update && sudo apt full-upgrade -y'
alias ports='ss -tulpn'
alias df='df -h'
alias free='free -h'
alias cls='clear'

# Ctrl+Left / Ctrl+Right word movement
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word



