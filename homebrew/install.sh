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

# Remove old packages
brew uninstall php54 php54-mcrypt php54-apc

# Install the packages we need
brew install wget gist git-flow mongodb redis mysql nginx curl hub
brew install imagemagick composer node coreutils git
brew install php55 --with-fpm php55-apcu php55-mcrypt php55-redis php55-xdebug php55-pcntl drush boris
brew install php55-jsmin php55-uploadprogress php55-gearman php55-solr php55-mongo

# Now Update!
brew update #gets the information
brew upgrade #performs the upgrade

# Install WP-CLI
curl http://wp-cli.org/installer.sh | bash

echo "Done with homebrew"
