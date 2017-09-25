#echo "start .bashrc"

# added ls-- to path to execute bin from any directory
export PATH=$PATH:/opt/lampp/bin:/home/ryan/bin:/home/ryan/bin/ls--:/home/ryan/bin/screenFetch:/home/ryan/.cabal/bin

#enable color support of ls
# enable color support of ls
#$ [ "$TERM" != "dumb" ] && eval "`dircolors -b`" && alias ls='ls --color=auto'

#alias ls='ls --color'

#alias ls='ls -al --color | less -R'


# https://github.com/biko2/symfony_complete
#if [ -e ~/symfony_complete ]; then
#	. ~/symfony_complete
#fi

# git fetch pull
#gfp () { git fetch && git checkout $1 && git pull origin $1; }

. /home/ryan/Dropbox/bash/.jp-profile

# include bash specific profile changes
## works if: ryan@ryan-GP60 ~ $ ln -s ~/Dropbox/Bash-Scripts/ Bash-Scripts
#if [ -e /home/ryan/Dropbox/git/git-profile-additions ]; then
	. /home/ryan/Dropbox/git/git-profile-additions
#fi

# ref: https://gist.github.com/hartym/2584767
# allows searching git stash with grep but also show the stash # it was found in
# e.g.
# stashgrep shim
# stash@{10}:+// console.time shim
stashgrep() {
  for i in `git stash list | awk -F ':' '{print $1}'`; do
    git stash show -p $i | grep -H --label="$i" "$1"
  done
}

# seems to yield same results not improved:
stashgrep2() {
  for i in `git stash list --format="%gd"`; do
    git stash show -p $i | grep -H --label="$i" "$1"
  done
}

# disable touchpad if usb mouse present, enable touchpad if no usb mouse:
~/Dropbox/public-bash-scripts/touchoff.sh

# more aliases
## need -2 for colors i guess on my xterm
alias tmux="tmux -2"

source ~/dotfiles/.bash-aliases

function _update_ps1() {
	 #echo "begin _update_ps1"
	 export PS1="$(/home/ryan/scripts/python/powerline-shell/powerline-shell.py $? 2> /dev/null) \n❯ "
	 #echo "end _update_ps1"
}

#export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# needed for ls--/ls++
PERL_MB_OPT="--install_base \"/home/ryan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ryan/perl5"; export PERL_MM_OPT;

# show the distro logo and various system info (screenfetch):
#screenfetch-dev -t

#source /home/ryan/.oh-my-git/prompt.sh

#echo "end .bashrc"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added 03-31-2017:
# source: http://stackoverflow.com/questions/9457233/unlimited-bash-history

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export NVM_DIR="/home/ryan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
