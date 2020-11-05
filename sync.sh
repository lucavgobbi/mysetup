#!/bin/bash

MESSAGE=$1

brew tap | awk '{ print "brew tap " $0}' > ~/mysetup/tap.txt
brew list --forula -1 | awk '{ print "brew install " $0}' > ~/mysetup/brew.txt
brew cask list --cask -1 | awk '{ print "brew cask install " $0}' > ~/mysetup/cask.txt
cp -f ~/.zshrc ~/mysetup/.zshrc
git -C ~/mysetup add .
git -C ~/mysetup commit -m "$MESSAGE"
git -C ~/mysetup push
