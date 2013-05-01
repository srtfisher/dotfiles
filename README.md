Dot Files
=====

My dot file setup is to be used across any number of computers. I currently sync
three computers using this dot file setup but can be expanded to any other amount. This works
**only** on my Mac as these are many Mac-specific programs.

### My Setup

1. Move this to a folder in Dropbox
2. Start Dropbox
3. Run `setup.sh` to get it going. It will prompt you to answer a few questions.
4. Have fun!

---------------

### Topics
#### ZSH
To have ZSH run properly, the theme will be using the [agnoster]<https://gist.github.com/agnoster/3712874> theme. Be sure to install the fonts at <https://gist.github.com/qrush/1595572> to run properly.

# iTerm 2
We're going to be syncing the iTerm settings. Go to iTerm -> Preferences. Look for a setting called "Load Preferences from a custom file". Select the `com.googlecode.iterm2.plist` file found in the iTerm folder of this package.

# On Boot
By default, it registers a script (on-boot.sh) to be run on boot. You have to change the path to this boot script for it to run before setup. See ZSH/dotfiles.srtfisher.core.plist.