#!/bin/bash
# Setting up a new machine which my things
#
# Author: Sean Fisher <srtfisher@gmail.com>
#

SYNC_BASE=$(dirname $0)

echo ''

# Import Common
source $SYNC_BASE/var/common.sh

echo "Welcome new user I am the mother ship. I like using Dropbox so that this can all be in sync."

username=whoami

# =====================
# System Preferences
# =====================
user 'Enter new hostname of the machine (e.g. macbook-username)'
read hostname

info "Setting new hostname to $hostname..."
scutil --set HostName "$hostname"
compname=$(sudo scutil --get HostName | tr '-' '.')
info "Setting computer name to $compname"
scutil --set ComputerName "$compname"

# =====================
# Atom
# =====================
info "Starting Atom..."
ln -s ~/Dropbox/sync/atom/atom ~/.atom
success "atom linked with this synced atom folder."

# Homebrew
source ./homebrew/install.sh

# RUBY Gems that are cool
info "Starting Ruby gems"
sudo gem install gifme && sudo gem install cloudapp
success "Done with gems"

# =====================
# Cloud App
# =====================
user "CloudApp email?"
read cloudapp_email

user "CloudApp Password?"
read -s cloudapp_password

echo "$cloudapp_email
$cloudapp_password" > ~/.cloudapp

# =====================
# Oh-my-zsh
# =====================
info "Adding oh-my-zsh..."
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Add Our .zshrc
rm -rf ~/.zshrc
ln -s ~/Dropbox/sync/ZSH/zshrc ~/.zshrc

# TODO: Font
success "Done with oh-my-zsh!"

# Run the osx.sh for the first time
info "Running on-boot script..."
source ./on-boot.sh
success "Done with on-boot"

# Add to launchctl
sh $SYNC_BASE/var/launchctl.sh

success "Complete!"
