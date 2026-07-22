# Enable Starship
eval "$(starship init zsh)"

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt AUTO_CD

# Better completion
autoload -Uz compinit
compinit

# Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Useful aliases
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

# Ctrl+Left / Ctrl+Right word movement
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
