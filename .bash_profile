#set -x
#echo "start .bash_profile"
export PATH=$PATH:/opt/lampp/bin

#echo "start ~/Dropbox/bash/.bash_profile"
source ~/Dropbox/bash/.bash_profile
#echo "end ~/Dropbox/bash/.bash_profile"

# for tmux:
. ~/.bashrc
# source: http://stackoverflow.com/questions/9652126/bashrc-profile-is-not-loaded-on-new-tmux-session-or-window-why
# Initialization for FDK command line tools.Sun Aug  9 09:56:54 2015
FDK_EXE="/home/ryan/bin/FDK/Tools/linux"
PATH=${PATH}:"/home/ryan/bin/FDK/Tools/linux"
export PATH
export FDK_EXE
# add shellcheck (vim is checking here for $PATH): (Oct 29 2016)
PATH=${PATH}:"/home/ryan/.cabal/bin"
export PATH

#echo "end .bash_profile"
