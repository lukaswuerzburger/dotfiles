#!/usr/bin/env bash

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


brew install mas # Mac App Store CLI
brew install git
xcode-select --install

sudo gem install -n /usr/local/bin cocoapods
brew cask install fastlane
defaults write com.apple.finder AppleShowAllFiles YES