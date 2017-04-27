#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".bashrc .bash_profile .vimrc .zshrc .jscs.json"    # list of files/folders to symlink in homedir
# for testing:
#files=".vimrc .gvimrc Dropbox/vim/allcolorstest.vim"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
   #if [[ -r ~/$file ]] ; then
   #    echo "$file can be read!"
   #fi
   #if [[ -e ~/$file ]] ; then
   #    echo "$file is a file!"
   #fi
   #if ! [[ -L ~/$file ]] ; then
   #    echo "$file is NOT a symlink!"
   #fi
   if [ -f ~/$file ] && ! [ -L ~/$file ]; then
       echo "$file exists and is not a symlink"
       echo "Moving any existing dotfiles from ~ to $olddir"
       mv ~/$file ~/dotfiles_old/
       echo "Creating symlink to $file in home directory."
       ln -s $dir/$file ~/$file
   elif ! [ -f ~/$file ]; then
       echo "$file doesn't yet exist"
       echo "Creating symlink to $file in home directory."
       ln -s $dir/$file ~/$file
   else
       echo "NOT Creating symlink to $file already seems to be a symlink: not overwriting back-up"
   fi
done

# original source: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

