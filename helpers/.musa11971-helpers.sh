#!/bin/sh

# Open file or folder in Sublime Text
function sublime() {
  open $1 -a "Sublime Text"
}

# PHPUnit alias
alias pu='phpunit --testdox'

# Laravel migrate:fresh --seed alias
alis mfs='php artisan migrate:fresh --seed'
