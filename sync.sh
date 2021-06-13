#!/bin/bash

MESSAGE=$1

brew tap | awk '{ print "brew tap " $0}' > ~/mysetup/tap.txt
brew list --formula -1 | awk '{ print "brew install " $0}' > ~/mysetup/brew.txt
brew list --cask -1 | awk '{ print "brew cask install " $0}' > ~/mysetup/cask.txt
cp -f ~/.zshrc ~/mysetup/.zshrc
cp -f ~/.p10k.zsh ~/mysetup/.p10k.zsh
cp -f ~/.oh-my-posh/theme.json ~/mysetup/oh-my-posh.theme.json
git -C ~/mysetup add .
git -C ~/mysetup commit -m "$MESSAGE"
git -C ~/mysetup push
