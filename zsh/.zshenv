# ~/.zshenv

# ---------- XDG base directories ----------
# Centralizes config/cache/data locations
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ---------- Editor ----------
# Default editor used by git, crontab, etc.
export EDITOR="nvim"
export VISUAL="nvim"

# ---------- Pager ----------
if command -v bat >/dev/null 2>&1; then
  export MANPAGER="bat -l man -p"
elif command -v batcat >/dev/null 2>&1; then
  export MANPAGER="batcat -l man -p"
fi

# ---------- GPG ----------
# export GPG_TTY=$(tty)

# # ---------- Starship ----------
# export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"

# ---------- Homebrew -------
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1

# ----------- Ack ----------
 export ACK_COLOR_MATCH='red'

# ---------- GO ------------
export GO111MODULE=""
export GOPROXY=direct
export GOSUMDB=off

# --------- PIP -----------
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# -------- TMPDIR ----------
export TMPDIR="$HOME/.tmp"

# ------------ LC and LANG ----------
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Ghostty
export DISABLE_AUTO_TITLE="true"

# ------------ Zoxide ----------------
# zoxide exclude dirs
export _ZO_EXCLUDE_DIRS="/tmp:/var:/proc:/sys:/node_modules:/.git:/dist:/build"
# zoxide keep 1 year of history
export _ZO_MAXAGE=365

# ------------ EZA --------------------
export EZA_ICONS_AUTO=1

# ---------- PATH ----------
# Personal binaries/scripts
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:./node_modules/.bin
export PATH=$PATH:/usr/local/git/bin
export PATH=$PATH:${GOPATH}/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:$HOME/.local/scripts
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Adding this here so mise and other tool managers get prioritized
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$HOME/.local/bin:$PATH

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/gianu/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
# Open code
export PATH=/Users/gianu/.opencode/bin:$PATH

# Java & Android
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"


export PTYHON_HOME=/usr/local/Cellar/python/2.7.6


. "$HOME/.cargo/env"

