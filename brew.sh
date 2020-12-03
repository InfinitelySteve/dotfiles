#!/usr/bin/env bash

# Install command-line tools using Homebrew.
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap jakehilborn/jakehilborn
brew tap romkatv/powerlevel10k
brew tap romkatv/powerlevel9k

# Make sure weâre using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrewâs installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Donât forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install mas to download apps from the App Store.
brew install mas
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install zsh shell.
brew install zsh
brew install zsh-autosuggestions
brew install zsh-completions


# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

https://apps.apple.com/us/app/gif-keyboard/id1043270657?mt=12
# Install personal items
brew install google-chrome
brew install google-photos-backup-and-sync
brew install parsec
brew install mackup
brew install plex
brew install iterm2
brew install postman
brew install rclone
brew install visual-studio-code
brew install powerlevel10k
brew install powerlevel9k
brew install tmux
brew install python@3.9
brew install displayplacer
brew install scrcpy
brew install youtube-dl
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install libusb
brew install discord
brew install iterm2
brew install sonos
brew install visual-studio-code
brew install android-messages
brew install androidtool
brew install font-hack-nerd-font
brew install megasync
brew install sony-ps4-remote-play
brew install vlc
brew install android-platform-tools
brew install cheatsheet
brew install font-powerline-symbols
brew install moonlight
brew install spotify
brew install balenaetcher
brew install steam

# Remove outdated versions from the cellar.
brew cleanup

# Begin install of Mac App store programs.
mas install 1043270657 #GIF Keyboard (2.0.5)
mas install 668208984 #GIPHY CAPTURE (4.1)
mas install 485812721 #TweetDeck (3.17)
mas install 441258766 #Magnet (2.5.0)
#mas install 1480068668 #Messenger (73.2.121)
#mas install 497799835 #Xcode (12.2)
#mas install 1295203466 #Microsoft Remote Desktop (10.5.0)