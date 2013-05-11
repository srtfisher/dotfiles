#!/bin/sh
#
# Ensure our on boot script is set to launch

VAR_BASE=$(dirname $0)


launchctl unload ~/Library/LaunchAgents/dotfiles.srtfisher.core.plist >/dev/null
rm -rf ~/Library/LaunchAgents/dotfiles.srtfisher.core.plist || true
cp $VAR_BASE/dotfiles.srtfisher.core.plist ~/Library/LaunchAgents/dotfiles.srtfisher.core.plist

launchctl load ~/Library/LaunchAgents/dotfiles.srtfisher.core.plist