# dotfiles
📄 My personal dotfiles.

## Installing just the helpers
You can also only install the helpers using curl.  
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/musa11971/dotfiles/master/helpers/install-helpers.sh)"`

## Setting up new mac
Follow these install instructions to setup a new Mac.

1. Update macOS to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Clone this repo to `~/.dotfiles`.
5. Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
6. Run `install.sh` to start the installation
7. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
8. Restart your computer to finalize the process

Your Mac is now ready to use!

## Sources used
- https://driesvints.com/blog/getting-started-with-dotfiles/
- https://github.com/driesvints/dotfiles