#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! "$(which brew)"; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Check for Laravel installer and install if we don't have it
if test ! "$(which laravel)"; then
  composer global require laravel/installer
fi

# Check for Valet and install if we don't have it
if test ! "$(which valet)"; then
  composer global require laravel/valet
  "$HOME/.composer/vendor/bin/valet" install
fi
