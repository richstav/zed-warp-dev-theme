# Warp Dark Theme - Zsh Configuration

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Editor
export EDITOR=vim
export VISUAL=vim

# Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases
alias ll='ls -la'
alias la='ls -la'
alias l='ls -lah'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git aliases
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gr='git rebase'
alias gst='git stash'
alias gsp='git stash pop'

# Functions
which() {
    command -v "$1" 2>/dev/null
}

mkcd() {
    mkdir -p "$1" && cd "$1"
}

gac() {
    git add -A && git commit -m "$*"
}

# Zinit (if using zinit)
if [[ -f ~/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    source ~/.local/share/zinit/zinit.git/zinit.zsh
    zinit light zdharma-history-search
fi

# Syntax highlighting
if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Syntax highlighting colors
ZSH_HIGHLIGHT_STYLES[default]='fg=#ffffff'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#616161'
ZSH_HIGHLIGHT_STYLES[string]='fg=#b4fa72'
ZSH_HIGHLIGHT_STYLES[keyword]='fg=#00c2ff'
ZSH_HIGHLIGHT_STYLES[function]='fg=#d0d1fe'
ZSH_HIGHLIGHT_STYLES[variable]='fg=#ffffff'
ZSH_HIGHLIGHT_STYLES[number]='fg=#fefdc2'
ZSH_HIGHLIGHT_STYLES[operator]='fg=#a5d5fe'
ZSH_HIGHLIGHT_STYLES[punctuation]='fg=#8e8e8e'
ZSH_HIGHLIGHT_STYLES[type]='fg=#fefdc2'

# Auto-suggestions
if [[ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#4a4a4a'
fi

# FZF
if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
    source /usr/share/fzf/key-bindings.zsh
    export FZF_DEFAULT_OPTS='--color=bg:#000000,fg:#ffffff,hl:#00c2ff,fg+:#ffffff,bg+:#111111,hl+:#00c2ff --color=info:#a5d5fe,prompt:#00c2ff,pointer:#ff8ffd --color=marker:#b4fa72,spinner:#ff8ffd,header:#808080'
elif [[ -f ~/.fzf/zsh/key-bindings.zsh ]]; then
    source ~/.fzf/zsh/key-bindings.zsh
fi

# Zoxide
if command -v zoxide &>/dev/null; then
    eval "$(zoxide init zsh)"
fi

# Starship prompt
if command -v starship &>/dev/null; then
    eval "$(starship init zsh)"
fi

# Zsh prompt (Oh-My-Zsh style)
PS1=$'%F{cyan}%n%f%F{green}@%f%F{white}%m%f %F{cyan}%~%f %F{default}$%f '
RPROMPT='%F{8}%T%f'

# Vi mode
bindkey -v
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
bindkey '^?' backward-delete-char
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^K' kill-line
bindkey '^U' kill-whole-line

# Auto-correction
setopt CORRECT
setopt CORRECT_ALL

# Auto-completion
autoload -Uz compinit
compinit

# Completion colors
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s|:|)LS_COLORS}"
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Keybindings
export INPUTRC=~/.inputrc

# Less colors
export LESS='-R'
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[1;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

# Welcome
echo ""
echo -e " \033[36m\033[1mWarp Dark Zsh\033[0m"
echo " Loaded: $(date '+%Y-%m-%d %H:%M:%S')"
echo ""
