#!/bin/sh

echo "Setting up your Mac..."

# Install helpers
sh helpers/install-helpers.sh

# Check for Homebrew and install if we don't have it
if test ! "$(which brew)"; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet

# Install Laravel Valet
"$HOME/.composer/vendor/bin/valet" install