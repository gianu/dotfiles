source ~/.zshrc

export PATH="$HOME/.cargo/bin:$PATH"


#### FIG ENV VARIABLES ####
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####


eval "$(/opt/homebrew/bin/brew shellenv)"
