#!/bin/bash
brew install -q hardlink-osx > /dev/null

hln -u ~/dotfiles/Brewfile
hln -u ~/dotfiles/profile
hln -u ~/dotfiles/gitignore
hln -u ~/dotfiles/gitconfig
hln -u ~/dotfiles/bundle/config
hln -u ~/dotfiles/rvm/hooks/after_cd
hln -u ~/dotfiles/pryrc
hln -u ~/dotfiles/irbrc
hln -u ~/dotfiles/gemrc
hln -u ~/dotfiles/rvmrc

hln ~/Brewfile ~/dotfiles/Brewfile
hln ~/.profile ~/dotfiles/profile
hln ~/.gitignore ~/dotfiles/gitignore
hln ~/.gitconfig ~/dotfiles/gitconfig
hln ~/.bundle/config ~/dotfiles/bundle/config
hln ~/.rvm/hooks/after_cd ~/dotfiles/rvm/hooks/after_cd
hln ~/.pryrc ~/dotfiles/pryrc
hln ~/.irbrc ~/dotfiles/irbrc
hln ~/.gemrc ~/dotfiles/gemrc
hln ~/.rvmrc ~/dotfiles/rvmrc
