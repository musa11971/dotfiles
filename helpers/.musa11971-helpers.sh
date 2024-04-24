#!/bin/sh

# frrrht-helpers command
frrrht() {
	if [ -z "$1" ] || [ "$1" = 'help' ] || [ "$1" = '' ]; then
		# Help command
		echo -e "       📄 \e[1mmusa11971-helpers"
		echo -e "  \e[1mhttps://github.com/frrrht/dotfiles\e[0m\n"
		echo -e "\e[33mUsage:\e[0m"
		echo -e "  'frrrht [command]'\n"
		echo -e "\e[33mAvailable commands:\e[0m"
		echo -e "  \e[32mhelp\e[0m\t\tShows this help screen"
		echo -e "\n\e[33mGlobal helpers:\e[0m"
		echo -e "  \e[32mcat\e[0m\t\tCat command that uses the 'bat' formatter."
		echo -e "  \e[32mwip\e[0m\t\tPushes 'wip' commit to current git repo."
		echo -e "  \e[32msublime\e[0m\tOpens a file or folder in Sublime Text"
		echo -e "  \e[32mduster\e[0m\tRuns Tighten Duster current context"
		echo -e "  \e[32mpint\e[0m\t\tRuns Pint in the current context"
		echo -e "  \e[32mpest\e[0m\t\tRuns Pest tests in the current context"
		echo -e "  \e[32mpestf\e[0m\t\tRuns Pest tests in the current context, with a filter"
		echo -e "  \e[32mmfs\e[0m\t\tRuns php artisan migrate:fresh --seed"
		echo -e "  \e[32mfinder\e[0m\tOpens the current folder in Finder"
		echo -e "  \e[32mrepo\e[0m\t\tOpens the current git repository in the browser"
		echo -e "  \e[32msite\e[0m\t\tOpens the current directory in the browser (http://{dir}.test/)"
	else
		echo -e "\e[91mUnknown command, use 'musa help' to list all available commands."
	fi
}

# Global shell helpers
alias reloadshell="source $HOME/.zshrc"
alias editshell="vim $HOME/.zshrc && reloadshell"

# MacOS helpers


# Duster aliases
alias duster='./vendor/bin/duster'

# Pint aliases
alias pint='./vendor/bin/pint'

# Pest aliases
alias pest='clear;./vendor/bin/pest'
alias pestf='clear;./vendor/bin/pest --filter='

# Laravel migrate:fresh --seed alias
alias mfs='php artisan migrate:fresh --seed'

# Opens the current folder in Finder
alias finder='open .'

# Open in different program
alias repo='open "$(git config --get remote.origin.url)"'
alias site='open "http://$(basename $PWD).test/"'
sublime() {
	open "$1" -a "Sublime Text"
}

# Replaces cat with bat
alias cat='bat'

# Git aliases
alias wip='git add .;git commit -m "wip"; git push'