# pfetch to flex
pfetch

# Colors and prompt:
autoload -U colors && colors
PROMPT='%F{green}%n@%m:%f%F{cyan}%~%f$ '

# Save history in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Auto/tab complete
autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Aliases:
alias vim="nvim"
alias ls="eza -a --color=always --group-directories-first --icons --git"
alias grep="rg"

# Jump between words with ctrl arrows keys
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# ZSH syntax highlighting plugin
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
