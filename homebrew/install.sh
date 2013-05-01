#!/bin/sh
#
# =====================
# Home Brew
# Can also be used to update new scripts across computers
# =====================
echo "Install homebrew and brew packages"
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Add dependency repositories
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php

# Install the packages we need
brew install wget gist git-flow mongodb redis mysql nginx curl php54 php54-apc php54-mcrypt
brew install imagemagick composer wp-cli

# Now Update!
brew update #gets the information
brew upgrade #performs the upgrade

echo "Done with homebrew"