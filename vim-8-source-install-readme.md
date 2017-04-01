
## Vim8 from source

Install instructions specific to my machine

```sh

cd ~/Downloads
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr/local

sudo make install

# if needed:

# Add the binary to your path, ahead of /usr/bin
# echo 'PATH=/usr/bin:$PATH' >> ~/.bash_profile
# Reload bash_profile so the changes take effect in this window
# source ~/.bash_profile

# could also add alias to .bash_profile

```


### Resources & References

- https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
- http://stackoverflow.com/questions/7211820/update-built-in-vim-on-mac-os-x
