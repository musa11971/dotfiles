#!/bin/sh

# musa11971-helpers command
musa() {
	if [ -z "$1" ] || [ "$1" = 'help' ] || [ "$1" = '' ]; then
		# Help command
		echo -e "       📄 \e[1mmusa11971-helpers"
		echo -e "  \e[1mhttps://github.com/musa11971/dotfiles\e[0m\n"
		echo -e "\e[33mUsage:\e[0m"
		echo -e "  'musa [command]'\n"
		echo -e "\e[33mAvailable commands:\e[0m"
		echo -e "  \e[32mhelp\e[0m\t\tShows this help screen"
		echo -e "  \e[32mupdate\e[0m\tUpdates these helpers with the most recent version"
		echo -e "\n\e[33mGlobal helpers:\e[0m"
		echo -e "  \e[32mcat\e[0m\t\tCat command that uses the 'bat' formatter."
		echo -e "  \e[32msublime\e[0m\tOpens a file or folder in Sublime Text"
		echo -e "  \e[32mduster\e[0m\t\tRuns Tighten Duster current context"
		echo -e "  \e[32mpint\e[0m\t\tRuns Pint in the current context"
		echo -e "  \e[32mpest\e[0m\t\tRuns Pest tests in the current context"
		echo -e "  \e[32mpestf\e[0m\t\tRuns Pest tests in the current context, with a filter"
		echo -e "  \e[32mmfs\e[0m\t\tRuns php artisan migrate:fresh --seed"
		echo -e "  \e[32mfinder\e[0m\tOpens the current folder in Finder"
		echo -e "  \e[32mrepo\e[0m\t\tOpens the current git repository in the browser"
	elif [ "$1" = 'update' ]; then
		# Update command
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/musa11971/dotfiles/master/helpers/install-helpers.sh)"
	else
		echo -e "\e[91mUnknown command, use 'musa help' to list all available commands."
	fi
}

# Open file or folder in Sublime Text
sublime() {
	open "$1" -a "Sublime Text"
}

# Duster aliases
alias pint='./vendor/bin/duster'

# Pint aliases
alias pint='./vendor/bin/pint'

# Pest aliases
alias pest='clear;./vendor/bin/pest'
alias pestf='clear;./vendor/bin/pest --filter='

# Laravel migrate:fresh --seed alias
alias mfs='php artisan migrate:fresh --seed'

# Opens the current folder in Finder
alias finder='open .'

# Opens the current git repo URL
alias repo='open "$(git config --get remote.origin.url)"'

# Replaces cat with bat
alias cat='bat'
