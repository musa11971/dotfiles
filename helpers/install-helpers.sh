#!/bin/sh

echo "Installing musa11971 helpers..."

# Remove the helpers if they were already installed
rm ~/.musa11971-helpers.sh 2> /dev/null

# Download the helpers
(cd ~ && curl -O https://raw.githubusercontent.com/musa11971/dotfiles/master/Brewfile)

echo "✅ Installed musa11971 helpers"
echo "Terminal may need to be restarted for the helpers to work."