#!/bin/bash

MESSAGE=$1

brew list -1 | awk '{ print "brew install" $0}' > ~/mysetup/brew.txt
brew cask list -1 | awk '{ print "brew cask install " $0}' > ~/mysetup/cask.txt
cp -f ~/.zshrc ~/mysetup/.zshrc
git -C ~/mysetup add .
git -C ~/mysetup commit -m "$MESSAGE"
git -C ~/mysetup push
