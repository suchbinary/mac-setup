#!/usr/bin/env bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Need to make sure I'm in the folder of this script, which is where the Brewfile is
cd ${0:a:h}/
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/florinmatei/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)
brew bundle --file=./Brewfile
