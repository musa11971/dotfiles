#!/bin/sh

# musa11971-helpers command
function musa {
	if [ -z $1 ] || [ $1 = 'help' ] || [ $1 = '' ]; then
		# Help command
		echo -e "       📄 \e[1mmusa11971-helpers"
		echo -e "  \e[1mhttps://github.com/musa11971/dotfiles\e[0m\n"
		echo -e "\e[33mUsage:\e[0m"
		echo -e "  'musa [command]'\n"
		echo -e "\e[33mAvailable commands:\e[0m"
		echo -e "  \e[32mhelp\e[0m\t\tShows this help screen"
		echo -e "  \e[32mupdate\e[0m\tUpdates these helpers with the most recent version"
		echo -e "\n\e[33mGlobal helpers:\e[0m"
		echo -e "  \e[32msublime\e[0m\tOpens a file or folder in Sublime Text"
		echo -e "  \e[32mpu\e[0m\t\tRuns PHPUnit tests in the current context"
		echo -e "  \e[32mmfs\e[0m\t\tRuns php artisan migrate:fresh --seed"
		echo -e "  \e[32mfinder\e[0m\tOpens the current folder in Finder"
	elif [ $1 = 'update' ]; then
		# Update command
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/musa11971/dotfiles/master/helpers/install-helpers.sh)"
	else
		echo -e "\e[91mUnknown command, use 'musa help' to list all available commands."
	fi
}

# Open file or folder in Sublime Text
function sublime() {
  open $1 -a "Sublime Text"
}

# PHPUnit alias
alias pu='clear;phpunit --testdox'

# Laravel migrate:fresh --seed alias
alias mfs='php artisan migrate:fresh --seed'

# Opens the current folder in Finder
alias finder='open .'
