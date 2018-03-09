#!/bin/sh

set -e

echo "Configuring the new computer...."

# First let's create the symbolic links
# ln -s [source] [target]

ln -sF `pwd`/../.ackrc ~/.ackrc
ln -sF `pwd`/../.gemrc ~/.gemrc
ln -sF `pwd`/../.ghci ~/.ghci
ln -sF `pwd`/../.gitconfig ~/.gitconfig
ln -sF `pwd`/../.githelpers ~/.githelpers
ln -sF `pwd`/../.hyper.js ~/.hyper.js
ln -sF `pwd`/../.iterm2_shell_integration.fish ~/.iterm2_shell_integration.fish
ln -sF `pwd`/../.screenrc ~/.screenrc
ln -sF `pwd`/../.tmux.conf ~/.tmux.conf
ln -sF `pwd`/../.vimrc ~/.vimrc
ln -sF `pwd`/../.zprofile ~/.zprofile
ln -sF `pwd`/../.zsh-update ~/.zsh-update
ln -sF `pwd`/../.zshenv ~/.zshenv
ln -sF `pwd`/../.zshrc ~/.zshrc

ln -sF `pwd`/../.vim ~/.vim
ln -sF `pwd`/../.zsh ~/.zsh
ln -sF `pwd`/../bin ~/.bin

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Update git version
sudo mv /usr/bin/git /usr/bin/git-apple
brew install git

# Make ZSH the default shell environment
xhsh -s $(which zsh)

# Install Oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

