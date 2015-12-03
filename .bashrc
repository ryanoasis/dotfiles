echo "start .bashrc"

# added ls-- to path to execute bin from any directory
export PATH=$PATH:/opt/lampp/bin:/home/ryan/bin:/home/ryan/bin/ls--:/home/ryan/bin/screenFetch

source ~/Dropbox/bash/.bashrc

function _update_ps1() {
	 echo "begin _update_ps1"
	 export PS1="$(/home/ryan/scripts/python/powerline-shell/powerline-shell.py $? 2> /dev/null) \n❯ "
	 echo "end _update_ps1"
}

#export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# needed for ls--/ls++
PERL_MB_OPT="--install_base \"/home/ryan/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ryan/perl5"; export PERL_MM_OPT;

# show the distro logo and various system info (screenfetch):
#screenfetch-dev -t

#source /home/ryan/.oh-my-git/prompt.sh

echo "end .bashrc"
