export PS1="%n:%C%{$%} "

export PATH="$HOME/bin:$PATH";
export PATH="/usr/local/sbin:$PATH"

DEFAULT_USER=nilax@nilax

export LC_ALL=en_US.UTF-8

# Aliases

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Default python3
alias pip='pip3'
alias python='python3'

# Brew one-click
alias brewup='brew update; brew upgrade; brew cleanup --prune-prefix; brew cleanup; brew doctor'

# Pip + Conda one-click
alias pipup='pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U;conda update --all --yes; conda clean --all --yes'

# General System refresh
alias sysup='sudo rm -R /Library/Preferences/com.apple.Bluetooth.plist;defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock;sudo pkill TouchBarServer; killall ControlStrip; killall -KILL SystemUIServer; killall NotificationCenter'

#Git upgrade
alias gitup='bash $HOME/.gitup.sh'

alias jnb='jupyter-notebook'

#VirtualBox
alias start-linux='VBoxManage startvm "Ubuntu" --type headless'
alias linux='ssh -p 2222 user@localhost'
alias close-linux='VBoxManage controlvm "Ubuntu" poweroff'

# List all extensions in directory
alias list_ext='bash $HOME/.list_ext.sh'

# Sorted list of file and sizes
alias list_size='find . -type f -exec du -h {} \; | sort -h -r'

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

alias dsclean="find . -type f -name '*.DS_Store' -ls -delete"

alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

alias path='echo -e ${PATH//:/\\n}'