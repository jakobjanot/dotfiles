#!/bin/bash

echo "Backup"

mkdir ~/dotfiles_backup

mv ~/.profile ~/dotfiles_backup
mv ~/.atom ~/dotfiles_backup
mv ~/.gitignore ~/dotfiles_backup
mv ~/.gitconfig ~/dotfiles_backup
mv ~/.bundle ~/dotfiles_backup
mv ~/.pryrc ~/dotfiles_backup
mv ~/.irbrc ~/dotfiles_backup

echo "Creating symlinks"

ln -s ~/dotfiles/profile ~/.profile
ln -s ~/dotfiles/atom ~/.atom
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/bundle ~/.bundle
ln -s ~/dotfiles/rvm/hooks/after_cd ~/.rvm/hooks/after_cd
ln -s ~/dotfiles/pryrc ~/.pryrc
ln -s ~/dotfiles/irbrc ~/.irbrc
