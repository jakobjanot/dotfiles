#!/bin/bash

echo "Saving atom packages list"
apm list --installed --bare > ~/dotfiles/atom-package-list.txt
