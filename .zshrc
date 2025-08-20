# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v
bindkey '^R' history-incremental-search-backward

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# End of lines added by compinstall
alias ll="ls -la --color=auto"
alias grep="rg"
alias vim="nvim"
alias feh="feh --scale-down --auto-zoom --fullscreen"
alias uzsh="source ~/.zshrc"

# prompt
PS1="%(?.%F{#55ffff}.%F{#ffaaff})%n:%1~%F{#55ffff}%% "

# exports
# TERM export is needed so TMUX does not override the NVIM colour theme
export TERM='xterm-256color'
