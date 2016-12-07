# Dotfiles

> Screenshots, backup, and overview of my development settings for my own reference. If it's useful to others then that's cool


## Settings Previews


### Desktop

![img](previews/desktop-1.png)

### Vim configuration

#### Custom font and glyphs

![img](previews/custom-glyphs.png)

* Showing
  * file type glyphs from [VimDevIcons][vim-devicons]
  * font from [Nerd Fonts][nerd-fonts]

#### JavaScript development

![img](previews/vim-js-development-1.png)

* Showing
  * custom separators and column number glyphs from [Powerline Extra Symbols][powerline-extra-symbols]
  * file type glyphs from [VimDevIcons][vim-devicons]
  * custom [syntastic][syntastic] glyphs
  ```vim
    let g:syntastic_style_error_symbol = '⚡'
    let g:syntastic_error_symbol = '✗'
    let g:syntastic_warning_symbol = '⚠'
  ```
  * [JSCS][jscs]
  * [JSHint][jshint]
* Vim JS development related plugins in use
  * [Syntastic][syntastic]
  * [JSDoc.vim][vim-jsdoc]

### Terminal

![img](previews/bash-terminal-1.png)

* Showing [Milkbikis' Powerline Shell][powerline-shell]

### Bash Aliases

|    alias     | command                        |
|:------------:|:------------------------------:|
| `g`          | git                            |
| `gb`         | git branch                     |
| `gcam`       | git commit -a -m               |
| `gco`        | git checkout                   |
| `gd`         | git diff                       |
| `gdc`        | git diff --cached              |
| `gk`         | gitk &                         |
| `gka`        | gitk --all &                   |
| `gp`         | git pull                       |
| `grev`       | git rev-parse HEAD | cut -c -7 |
| `gs`         | git status                     |
| `gfpull`     | git fetch pull                 |
| `gfpush`     | git fetch push                 |
| `gt`         | git track                      |
| `gv`         | git version                    |

### Tmux

* todo

[vim-devicons]:https://github.com/ryanoasis/vim-devicons
[powerline-extra-symbols]:https://github.com/ryanoasis/powerline-extra-symbols
[syntastic]:https://github.com/scrooloose/syntastic
[jscs]:https://github.com/jscs-dev/node-jscs
[jshint]:https://github.com/jshint/jshint
[vim-jsdoc]:https://github.com/heavenshell/vim-jsdoc
[powerline-shell]:https://github.com/milkbikis/powerline-shell
[nerd-fonts]:https://github.com/ryanoasis/nerd-fonts
