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
		echo -e "  \e[32mclean\e[0m\t\tCleans stale git branches & removes useless files"
	else
		echo -e "\e[91mUnknown command, use 'musa help' to list all available commands."
	fi
}

alias reload='. ${HOME}/.zshrc'

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
wip() {
    if [ $# -eq 0 ]; then
        git add .
        git commit -m "wip"
    else
        git add .
        git commit -m "$*"
    fi
    git push
}

# Clean command
clean() {
	if [ -d .git ]; then
		echo -e "\e[32mCleaning stale git branches..."
		git branch --merged | grep -v "\* \| main\|master\|develop" | xargs -n 1 git branch -d
	fi

	echo -e "\e[32mCleaning .DS_Store files..."
	find . -type f -name '.DS_Store' -delete
}