# Better ls
alias ls='eza' # --icons automatically through EZA_ICONS_AUTO

# Detailed listing
alias ll='eza -lh --git' # --icons automatically through EZA_ICONS_AUTO 

# Detailed listing including hidden files
alias la='eza -lah --git' # --icons automatically through EZA_ICONS_AUTO

# Tree view
alias tree='eza --tree' # --icons automatically through EZA_ICONS_AUTO

# Reuse ls completions for eza (avoids defining a separate completion function)
compdef eza=ls

# Better cat
alias cat='bat'

# =========================================================
# Core utilities
# =========================================================

alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'

# =========================================================
# Navigation
# =========================================================

alias -- -='cd -'  # -- prevents - being parsed as a flag; cd - jumps to previous directory

lf() { # zsh follow lf navigation
    tmp=$(mktemp)
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir=$(cat "$tmp")
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# =========================================================
# Editor
# =========================================================

alias vi='nvim'
alias vim='nvim'

# =========================================================
# Fabric
# =========================================================
alias fabric='fabric-ai'
