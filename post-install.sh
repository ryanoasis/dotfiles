#!/bin/bash
# Author: Ryan L McIntyre (https://github.com/ryanoasis)
# inspiration: http://blog.self.li/post/74294988486/creating-a-post-installation-script-for-ubuntu

# post clean-up

cd ~
rm -rf ~/Documents
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Videos
rm -rf ~/Music

# restore apps that I use

# some background info:
# nfs-common: for mounting network drives, etc
# gist
# https://github.com/defunkt/gist

# todo: google chrome

# PPAs
sudo add-apt-repository --yes ppa:fontforge/fontforge

sudo apt-get update

# install apps + apps for development
sudo apt-get -y install \
    nfs-common git gitk gitg \
    fontforge ruby \
    keepassx shutter \
    virtualbox virtualbox-guest-additions-iso \
    skype curl gparted geany \
    npm vlc shellcheck \
    python-fontforge \
    jekyll
    
# terminal emulators (mostly for testing VimDevIcons)
sudo apt install \
    rxvt-unicode \
    tmux \
    python-pip \
    virtualenv \
    cifs-utils
    
# pip installs
## upgrade pip
sudo pip install --upgrade pip
sudo pip install proselint
sudo pip install icon_font_to_png

# VimDevIcons specific prerequisites
# via https://github.com/xolox/vim-tools
cd ~
## Clone the repository
git clone https://github.com/xolox/vim-tools.git
cd vim-tools
## Create the virtual environment.
virtualenv html2vimdoc
## Install the dependencies.
html2vimdoc/bin/pip install beautifulsoup coloredlogs markdown
## Run the program.
html2vimdoc/bin/python ./html2vimdoc.py --help

    
# dropbox
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
    
# npm installs
sudo npm install -g write-good
sudo npm install -g alex

# gems
sudo gem install gist

# setup node in path
## /usr/bin/env: ‘node’: No such file or directory
sudo ln -s /usr/bin/nodejs /usr/bin/node

# asciinema (https://asciinema.org/) on Ubuntu
sudo apt-add-repository ppa:zanchey/asciinema
sudo apt-get update
sudo apt-get install asciinema

# byzanz (for byzanz-record)
sudo apt install byzanz
# xrectsel (for byzanz screen capture)
cd Downloads/
git clone https://github.com/lolilolicon/xrectsel
cd xrectsel/
./bootstrap
./configure --prefix /usr/local
sudo make install
cd ..
rm -rf xrectsel/
