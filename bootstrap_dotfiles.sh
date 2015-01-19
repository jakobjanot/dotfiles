#!/bin/bash

echo "Backup"

mkdir ~/dotfiles_backup
mv ~/.profile ~/dotfiles_backup
mv ~/.bash_aliases ~/dotfiles_backup
mv ~/.bash ~/dotfiles_backup
mv ~/.atom ~/dotfiles_backup
mv ~/.gitignore ~/dotfiles_backup
mv ~/.gitconfig ~/dotfiles_backup
mv ~/.bundle ~/dotfiles_backup

echo "Creating symlinks"

ln -s dotfiles/profile ~/.profile
ln -s dotfiles/bash_aliases ~/.bash_aliases
ln -s dotfiles/bash ~/.bash
ln -s dotfiles/atom ~/.atom
ln -s dotfiles/gitignore ~/.gitignore
ln -s dotfiles/gitconfig ~/.gitconfig
ln -s dotfiles/bundle ~/.bundle

echo "Installing atom packages"
apm stars --user jakobjanot --install
