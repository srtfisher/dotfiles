#!/bin/sh
#
# =====================
# Home Brew
# Can also be used to update new scripts across computers
# =====================
echo "Install homebrew and brew packages"
#ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Add dependency repositories
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php


# Now Update!
brew update #gets the information
brew upgrade #performs the upgrade

# Install the packages we need
brew install wget gist git-flow mongodb redis mariadb nginx curl hub
brew install imagemagick composer node coreutils git

# PHP 5.5
brew install php55 --with-fpm php55-mcrypt php55-redis php55-xdebug
brew install php55-jsmin php55-uploadprogress php55-gearman php55-solr php55-mongo
brew unlink php55

# PHP 5.6
brew install php56 --with-fpm php56-mcrypt php56-redis php56-xdebug
brew install php56-jsmin php56-uploadprogress php56-gearman php56-solr php56-mongo

# Link the PHP to use
brew link php56

# Install php utils
brew install wp-cli boris

# Gems
gem install lunchy
gem install git-up

echo "Done with homebrew"
