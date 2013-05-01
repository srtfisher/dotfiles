CWD=$(pwd)

cd "~/Library/Application Support/Sublime Text 2"

# UNLINK FIRST
unlink ./Installed\ Packages
unlink ./Packages
unlink ./Pristine\ Packages

# Delete if they weren't symlinked
rm -rf ./Installed\ Packages
rm -rf ./Packages
rm -rf ./Pristine\ Packages

# Link them back up!
ln -s "$CWD/Installed Packages" ./Installed\ Packages
ln -s "$CWD/Packages" ./Packages
ln -s "$CWD/Pristine Packages" ./Pristine\ Packages
