# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# ZSH Plugin configuration
plugins=(git z)

# Sourcing other files
source $ZSH/oh-my-zsh.sh
source $HOME/.musa11971-helpers.sh

# Path configuration
export PATH=~/.composer/vendor/bin:$PATH

# NVM configuration
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion"
