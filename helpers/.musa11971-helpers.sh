#!/bin/sh

# Open file or folder in Sublime Text
function sublime() {
  open $1 -a "Sublime Text"
}

# Alias to update these helpers
alias update-musa11971-helpers='sh -c "$(curl -fsSL https://raw.githubusercontent.com/musa11971/dotfiles/master/helpers/install-helpers.sh)"'

# PHPUnit alias
alias pu='phpunit --testdox'

# Laravel migrate:fresh --seed alias
alis mfs='php artisan migrate:fresh --seed'
