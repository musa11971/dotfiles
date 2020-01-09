#!/bin/sh

echo "Installing musa11971 helpers..."

# Remove the helpers if they were already installed
rm ~/.musa11971-helpers.sh 2> /dev/null

# Download the helpers
curl -s https://raw.githubusercontent.com/musa11971/dotfiles/master/helpers/.musa11971-helpers.sh --output ~/.musa11971-helpers.sh > /dev/null

# Source the script
source ~/.musa11971-helpers.sh

echo "✅ Installed musa11971 helpers"