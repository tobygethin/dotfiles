echo -e "\e]12;white\a"
# pfetch to flex
pfetch

# Colors and prompt:
autoload -U colors && colors
PROMPT='%B%F{cyan}%~ %F{green}> '

# Save history in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Enable command completion:
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select

# Auto complete with case insensitivity:
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Load Zsh modules for command completion and initialize:
zmodload zsh/complist
compinit

# Aliases:
alias vim="nvim"
alias ls="eza -a --color=always --group-directories-first --icons"
alias grep="rg"

# Jump between words with ctrl arrows keys
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

alias hdf='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
