#!/bin/bash

MESSAGE=$1

brew list -1 | awk '{ print "brew install" $0}' > ~/brew/brew.txt
brew cask list -1 | awk '{ print "brew cask install " $0}' > ~/brew/cask.txt
cp -f ~/.zshrc ~/brew/.zshrc
git -C ~/brew add .
git -C ~/brew commit -m "$MESSAGE"
git -C ~/brew push
