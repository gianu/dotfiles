#############################
### Environment variables ###
#############################

# export MAIN_EDITOR="nvim"
# export EDITOR=$MAIN_EDITOR
# export VISUAL=$EDITOR
# export LSCOLORS='exfxcxdxbxegedabagacad'
# export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:'
# export WORDCHARS='*?_[]~=&;!#$%^(){}'
# export FZF_DEFAULT_OPTS='--reverse --color="info:#000000,spinner:#000000" --prompt="  "'
# export HISTFILE="$HOME/.history"
# export HISTSIZE=100000
# export SAVEHIST=$HISTSIZE
# export PAGER=less
# export GIT_PAGER='less -F -X'
# export LESS_TERMCAP_mb=$'\E[01;31m'
# export LESS_TERMCAP_md=$'\E[01;31m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[00;47;30m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;32m'
# export LESS=eFRX
# export GREP_OPTIONS='--color=always'
# export GREP_COLOR='1;35;40'
# export HOMEBREW_NO_ANALYTICS=1
# export HOMEBREW_NO_AUTO_UPDATE=1
# export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
# export ACK_COLOR_MATCH='red'
# export WORDCHARS='*?[]~&;!$%^<>'
# export GO111MODULE=""
# export GOPROXY=direct
# export GOSUMDB=off
# export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
# export LDFLAGS="-L/usr/local/opt/libffi/lib"
# export CPPFLAGS="-I/usr/local/opt/libffi/include"
# export TMPDIR="$HOME/.tmp"


# export PATH=$PATH:/Users/gianu/bin
# export PATH=$PATH:$HOME/.bin
# export PATH=$PATH:./node_modules/.bin
# export PATH=$PATH:/usr/local/git/bin
# export PATH=$PATH:${GOPATH}/bin
# export PATH=$PATH:$HOME/.cargo/bin
# export PATH=$PATH:/opt/homebrew/bin
# export PATH="/usr/local/opt/terraform@0.13/bin:$PATH"
# export PATH=$PATH:$HOME/.local/scripts
# export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"


# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8


# export ZELLIJ_CONFIG_FILE=~/.config/zellij/config.kdl

# # zoxide exclude dirs
# export _ZO_EXCLUDE_DIRS="/tmp:/var:/proc:/sys:/node_modules:/.git:/dist:/build"
# # zoxide keep 1 year of history
# export _ZO_MAXAGE=365

#############################
### General configuration ###
#############################

# setopt no_beep
# setopt interactive_comments
# setopt prompt_subst
#
# setopt auto_cd
# setopt auto_pushd
# setopt pushd_ignore_dups
# setopt pushd_minus
# setopt pushd_silent
#
# setopt append_history
# setopt inc_append_history
# setopt extended_history
# setopt hist_expire_dups_first
# setopt hist_ignore_all_dups
# setopt hist_ignore_dups
# setopt hist_ignore_space
# setopt share_history
#
# setopt hup
# setopt long_list_jobs
# setopt notify
#
# autoload -U compinit
# compinit
# zstyle ':completion:*' menu select
# zstyle ':completion:*:default' list-colors ''
# # case-insensitive, partial-word, and then substring completion
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
# zstyle ':completion:*' completer _complete _approximate
# zstyle ':completion:*:approximate:*' max-errors 1 numeric
# zstyle -e ':completion:*:approximate:*' max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
# zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
#
# fpath+=("$(brew --prefix)/share/zsh/site-functions")

# autoload -U promptinit; promptinit
# prompt pure

# ############################
# ### Aliases              ###
# ############################
#
# # alias ls='exa' #-G
# # alias ps='procs'
# # alias cat='bat'
# # alias less='bat'
# # alias grep='ripgrep'
# # alias rg='ripgrep'
# # alias nano='kibi'
# # alias find='fd'
# # alias du='dust'
# # alias time='hyperfine"
# # alias top='ytop'
# alias iftop='bandwhich'
# # alias hexdump='hx'
# # alias objdump='bingrep'
# # alias http-server='miniserve'
# # alias license='licensor'
#
# # alias ls='ls -G --color'
# alias ls='ls -G'
# alias ll='ls -lG'
#
# alias lzd='lazydocker'
# alias lg='lazygit'
#
# # alias pb='kaizoku'
#
# alias yi='yarn install'
# alias yd='yarn dev'
#
# alias mt='mix test'
#
# # alias ssh="TERM=xterm-256color ssh"
#
# alias vi="nvim"
# alias vim="nvim"
# alias nvim-resign='find ~/.local/share/nvim -name "*.so" -exec codesign --force --sign - {} \; && find ~/.local/share/nvim -name "*.dylib" -exec codesign --force --sign - {} \;'
#
# alias grep="grep --color"
#
# # Node
# alias fu="fnm use"
# alias fuyi="fnm use && yarn install"
# alias fupi="fnm use && pnpm install"
# alias fun="fnm use && npm install"
# alias mkt="make test-watch"
# alias pi="pnpm install"
# alias pd="pnpm run dev"
# alias pt="pnpm test"
#
# # Ruby
# alias r="bin/rails"
# alias dev="bin/dev"
#
#
# # Git and related
# alias gc=". ~/.local/scripts/ai-commit.sh"
# alias gm=". ~/.local/scripts/ai-commit.sh"
#
# ## Kubectl aliases for ClassDojo ##
# alias kctl-test='kubectl --context="aws/us-west-1-test"'
# alias kctl-ci='kubectl --context="aws/us-east-1-ci"'
# alias kctl-prod='kubectl --context="aws/us-east-1-prod"'
# alias kctl-ext='kubectl --context="aws/us-west-1-external"'
#
# alias void-diary="nvim /dev/null"
#
# alias wm="workmux"
#
# #############################
# ### Plugins configuration ###
# #############################
#
# autoload -U colors && colors
#
# ####################
# ### Key bindings ###
# ####################
# bindkey -e
#
# bindkey '^a' beginning-of-line
# bindkey '^e' end-of-line
# bindkey '^b' backward-char
# bindkey '^f' forward-char
# bindkey '\eb' backward-word
# bindkey '\ef' forward-word
# bindkey '\ed' kill-word
# bindkey '^k' kill-line
# bindkey '^d' delete-char
# bindkey '\ew' backward-kill-word
# bindkey '^u' backward-kill-line
# bindkey '^r' history-incremental-search-backward
#
# autoload -U up-line-or-beginning-search
# zle -N up-line-or-beginning-search
# bindkey '^[[A' up-line-or-beginning-search
# bindkey '^p' up-line-or-beginning-search
#
# autoload -U down-line-or-beginning-search
# zle -N down-line-or-beginning-search
# bindkey '^[[B' down-line-or-beginning-search
# bindkey '^n' down-line-or-beginning-search
#
# zmodload zsh/complist
# bindkey -M menuselect '^e' accept-line
# bindkey -M menuselect '\ef' menu-complete
# bindkey -M menuselect '\eb' reverse-menu-complete
# bindkey -M menuselect '^[[Z' reverse-menu-complete
#
# zle -N insert-last-command-output
# bindkey '^x^l' insert-last-command-output
#
# autoload -U copy-earlier-word
# zle -N copy-earlier-word
# bindkey '^[m' copy-earlier-word
#
# zle -N expand-or-complete-with-waiting-dots
# bindkey '^i' expand-or-complete-with-waiting-dots
#
# autoload -U edit-command-line
# zle -N edit-command-line
# bindkey '^x^e' edit-command-line
#
# zle -N exit-shell
# bindkey '^Sx' exit-shell
#
# bindkey -N paste
# zle -N start-paste
# bindkey '^[[200~' start-paste
# zle -N end-paste
# bindkey -M paste '^[[201~' end-paste
# zle -N paste-insert paste-insert
# bindkey -R -M paste "^@"-"\M-^?" paste-insert
# bindkey -M paste -s '^M' '^J'
#
# bindkey -s ^s "tmux-sessionizer\n"
#
# expand-or-complete-with-waiting-dots() {
#   echo -n "\e[31m......\e[0m"
#   zle expand-or-complete
#   zle redisplay
# }
#
# insert-last-command-output() {
#   LBUFFER+="$(eval $history[$((HISTCMD-1))])"
# }
#
# searchi () {
#         selected_line=$(sk --ansi -i -c 'rg -i --line-number --color=always "{}"')
#         split_lines=("${(@s/:/)selected_line}")
#         if [[ ${#split_lines} > 1 ]]
#         then
#                 nvim +${split_lines[2]} "${split_lines[1]}"
#         fi
# }
#
# exit-shell() {
#   exit
# }
#
# start-paste() {
#   bindkey -A paste main
# }
#
# end-paste() {
#   bindkey -e
#   LBUFFER+=$_paste_content
#   unset _paste_content
# }
#
# paste-insert() {
#   _paste_content+=$KEYS
# }
#
#
# function chtitle {
#     echo -ne "\033]0;"$*"\007"
# }
#
#
# function ecrlogin() {
#   aws ecr get-login-password \
#     --region us-east-1 \
# | docker login \
#     --username AWS \
#     --password-stdin 347708466071.dkr.ecr.us-east-1.amazonaws.com
# }
#
# # Mob scripts
#
# function mob-start() {
#   if [ -z "$1" ]; then
#     echo "You must provide a name for the branch."
#     echo "eg.: mob-start my_branch 5"
#     return 1
#   fi
#
#   if [ -z "$2" ]; then
#     echo "You must provide a time for the duration of the mob round."
#     echo "eg.: mob-start my_branch 5"
#     return 2
#   fi
#
#   git checkout -b "$1" && git push origin "$1" --set-upstream --no-verify && mob start --include-uncommitted-changes $2;
# }
#
# # Personal functions
#
# function mem() {
#   top -l 1 -s 0 -stats mem -pid "$1" | tail -n 1
# }

# #############
# ### Other ###
# #############
#
# . $HOME/.zshrc-private
#
# . $HOME/.zsh/func/worktrees


# eval "$(fnm env)"
#
# ulimit -n 10240

# [ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh


# export PATH="/usr/local/opt/openjdk/bin:$PATH"
#
# # pnpm
# export PNPM_HOME="/Users/gianu/Library/pnpm"
# case ":$PATH:" in
#   *":$PNPM_HOME/bin:"*) ;;
#   *) export PATH="$PNPM_HOME/bin:$PATH" ;;
# esac
# # pnpm end
# export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
#
# # Java & Android
# # export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"
# export ANDROID_HOME="$HOME/Library/Android/sdk"
# export PATH="$PATH:$ANDROID_HOME/emulator"
# export PATH="$PATH:$ANDROID_HOME/platform-tools"
# export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
#
#
# export PTYHON_HOME=/usr/local/Cellar/python/2.7.6

#source ~/.api_tz_dont_delete
# export PATH=$PATH:$HOME/.maestro/bin

# Created by `pipx` on 2024-12-12 21:27:54
# export PATH="$PATH:/Users/gianu/.dotfiles/bin/.local/bin"

# bun completions
# [ -s "/Users/gianu/.bun/_bun" ] && source "/Users/gianu/.bun/_bun"

# eval "$(~/.local/bin/mise activate)"

# precmd_functions=()
# preexec_functions=()


# export GOPATH=`go env GOPATH`


# # Adding this here so mise and other tool managers get prioritized
# export PATH=$PATH:/usr/local/bin
# export PATH=$PATH:/usr/bin
# export PATH=$PATH:/bin
# export PATH=$PATH:/usr/sbin
# export PATH=$PATH:/sbin
# export PATH=$HOME/.local/bin:$PATH

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

# eval "$(starship init zsh)"
# eval "$(zoxide init zsh)"

# PostgreSQL client (psql) - for Redshift connections
# export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
# export DISABLE_AUTO_TITLE="true"

# opencode
# export PATH=/Users/gianu/.opencode/bin:$PATH
source /Users/gianu/.safe-chain/scripts/init-posix.sh # Safe-chain Zsh initialization script

######################
#
## Powerful but minimal zsh configuration
# Author: Radley E. Sidwell-Lewis
# GitHub: https://www.github.com/radleylewis/zsh
#
# Uses:
#   Plugins:      fast-syntax-highlighting, zsh-autosuggestions,
#                 zsh-history-substring-search, zsh-vi-mode
#   Prompt:       starship
#   Navigation:   zoxide, fzf, fd
#   CLI tools:    eza, bat, nvim, ripgrep
#   Node:         nvm

# =========================================================
# History
# =========================================================

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# =========================================================
# Shell behaviour
# =========================================================

setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT  # sort file10 after file9, not after file1

# =========================================================
# Smart directory navigation & lf
# =========================================================

# LF_ICONS=$(cat ~/.config/lf/icons | tr '\n' ':')
# export LF_ICONS

# Initialize zoxide
eval "$(zoxide init zsh)"

# =========================================================
# Completion
# =========================================================

# Load completion system
autoload -Uz compinit

# Initialize completion with cached metadata file
compinit -d "$HOME/.zsh/zcompdump"

# Enable interactive completion menu selection
zstyle ':completion:*' menu select

# Make completion case-insensitive
# Example: "doc" can complete to "Documents"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'  # lowercase input matches upper and lower

# =========================================================
# Fuzzy finder
# =========================================================

# macOS / Homebrew (Apple Silicon)
if [[ -f /opt/homebrew/opt/fzf/shell/key-bindings.zsh ]]; then
  source /opt/homebrew/opt/fzf/shell/key-bindings.zsh
  source /opt/homebrew/opt/fzf/shell/completion.zsh
fi


# =========================================================
# Modular Config Files
# =========================================================

# if [[ -d "$HOME/.zsh" ]]
# then
#   export ZDOTDIR="$HOME/.zsh"
# fi
export ZDOTDIR="$HOME"

# fzf configuration
source "$ZDOTDIR/.zsh/fzf.zsh"

# Aliases
source "$ZDOTDIR/.zsh/aliases.zsh"

# Custom keybindings
source "$ZDOTDIR/.zsh/bindings.zsh"

# Plugins and plugin manager
source "$ZDOTDIR/.zsh/plugins.zsh"

# Prompt/theme
source "$ZDOTDIR/.zsh/prompt.zsh"


# =========================================================
# Node / NVM
# =========================================================

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"


#############
### Other ###
#############

. $HOME/.zshrc-private


# . $HOME/.zsh/func/worktrees

eval "$(fnm env)"

eval "$(~/.local/bin/mise activate)"

ulimit -n 10240

# Setting this here after mise initialization
export GOPATH=`go env GOPATH`

# ==========================================================
# Worktrunk
# ==========================================================

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi

