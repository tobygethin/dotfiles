# Default Apps
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"

# pfetch
export PF_INFO="ascii title os kernel de shell uptime pkgs memory palette"

# Firefox to use KDE portal
export GTK_USE_PORTAL=1


if [[ "OSTYPE" == "linux-gnu" ]]; then
    # Source for Arch Linux
    export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Source for Mac
    export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR /opt/homebrew/share/zsh-syntax-highlighting/highlighters
fi
