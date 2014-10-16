
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Leader shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","
" source: http://amix.dk/vim/vimrc.html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End General Leader shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/Dropbox/vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
"Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'maksimr/vim-jsbeautify'
" einars/js-beautify moved to beautify-web/js-beautify
Plugin 'beautify-web/js-beautify'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'scrooloose/nerdtree' " commented out, because trying git-nerdtree
" using official nerdtree plugin again now a dependency for Xuyuanp/nerdtree-git-plugin
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'marijnh/tern_for_vim'
"Plugin 'ramitos/jsctags'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'
"Plugin 'tpope/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'StanAngeloff/php.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'lilydjwg/colorizer'
"Plugin 'Yggdroot/indentLine'
" dont need right now, working in vim for tabs with set list lcs=tab...
Plugin 'justinmk/vim-gtfo'
Plugin 'vim-scripts/text-object-left-and-right'
Plugin 'endel/ctrlp-filetype.vim'
" for files that are not tracked in version control (git):
" Plugin 'chrisbra/changesPlugin' " didnt like that it conflicted with
" gitgutter (didnt seem like there was a way to have both) and the styling i didnt find too appealing
Plugin 'mattn/gist-vim'
" Plugin 'Xuyuanp/git-nerdtree' " deprecated
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" END VUNDLE CONFIG
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JsDoc config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:jsdoc_input_description = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_return_description = 0
let g:jsdoc_additional_descriptions = 0
let g:jsdoc_underscore_private = 1
let g:jsdoc_func_name_description_default = 0

if !exists('g:jsdoc_input_description')
  let g:jsdoc_input_description = 0
endif
" Prompt user for function description
if !exists('g:jsdoc_additional_descriptions')
  let g:jsdoc_additional_descriptions = 0
endif
" Prompt user for return type
if !exists('g:jsdoc_return')
  let g:jsdoc_return = 1
endif
" Prompt user for return description
if !exists('g:jsdoc_return_description')
  let g:jsdoc_return_description = 1
endif
" Allow prompt to input
if !exists('g:jsdoc_allow_input_prompt')
  let g:jsdoc_allow_input_prompt = 0
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END JsDoc config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:syntastic_style_error_symbol = '⚡'
let g:syntastic_error_symbol = '✗'
" '⚡' '😱' '✗' '➽'
" other cool characters:
" ⚑ ⚐ ♒ ⛢ ❕ ❗
let g:syntastic_warning_symbol = '⚠'

" This does what it says on the tin. It will check your file on open too, not just on save.
let g:syntastic_check_on_open=0
" using instead to run manually: SyntasticToggleMode
" source: https://github.com/scrooloose/syntastic/issues/689
" source: http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/

" custom jshint rules for KO (acrowidgets, but should apply to all JS files)
" /home/ryan/www/ko/proto/acrowidgets/.jshintrc
let g:syntastic_javascript_jshint_conf="/home/ryan/Dropbox/.jshintrc"
let g:syntastic_javascript_jscs_conf="/home/ryan/Dropbox/.jscs.json"

" for troubleshooting:
"let g:syntastic_debug=3

" Q. Syntastic supports several checkers for my filetype - how do I tell it
" which one(s) to use?
let g:syntastic_javascript_checkers = ["jshint", "jscs"]
" source: https://github.com/scrooloose/syntastic

" How can I display together the errors found by all checkers enabled for the
" current file?
let g:syntastic_aggregate_errors = 1

" Q. I run a checker and the location list is not updated...
let g:syntastic_always_populate_loc_list = 1

" You can also run checkers explicitly by calling :SyntasticCheck <checker>
" e.g. to run phpcs and phpmd:
" :SyntasticCheck phpcs phpmd
" :SyntasticCheck jscs


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END syntastic config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe (YCM) config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" When this option is set to 1, YCM's identifier completer will also collect
" identifiers from strings and comments. Otherwise, the text in comments and
" strings will be ignored.
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" source: https://github.com/Valloric/YouCompleteMe

" disable preview window on auto-complete:
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" source: https://github.com/Valloric/YouCompleteMe#i-get-a-weird-window-at-the-top-of-my-file-when-i-use-the-semantic-engine

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END YouCompleteMe (YCM) config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-powerline (obselete now using airline)
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" recommended to put in vimrc NOT gvimrc (too late loading)
" let g:Powerline_symbols = 'fancy'
" fixes statusline only appearing in split windows mode
set laststatus=2
" source: https://github.com/Lokaltog/vim-powerline

" dont need showmode indicator now because using awesome Powerline :D
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-markdown (plasticboy)
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_initial_foldlevel = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End vim-markdown (plasticboy)
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP settings
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" source: http://dougblack.io/words/a-good-vimrc.html#ctrlp-section

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(exe|so|dll)$',
"  \ 'link': 'some_bad_symbolic_links'
"  \ }
" source: https://github.com/kien/ctrlp.vim

" ctrlp extensions:
" CtrlP for filetype
let g:ctrlp_extensions = ['filetype']
" silent! nnoremap <unique> <silent> <Leader>f :CtrlPFiletype<CR>
" source: https://github.com/endel/ctrlp-filetype.vim

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End CtrlP section
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gundo section
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" end gundo section
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" by default <c-p> command open in MRU mode
let g:ctrlp_cmd = 'CtrlPMRU'


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End CtrlP
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set color term to 256 colors
" need to use with CSApprox script to work
" set t_Co=256

syntax on
colorscheme jellybeans
"colorscheme obsidian2
"colorscheme robinhood
"colorscheme elflord

" working directory always where the active buffer is located
set autochdir

set ruler

" set hidden
set hidden
" source: http://nvie.com/posts/how-i-boosted-my-vim/

" Sets the font and size
"set guifont=Consolas:h11

" Sets the percent transparency
" causes error
" set transparency=10

" Turn on line numbers
set number

" Tabbing settings
" http://stackoverflow.com/questions/3682582/how-to-use-only-tab-not-space-in-vim
set autoindent
set noexpandtab
set tabstop=3
set shiftwidth=3

"set expandtab
"set tabstop=2
"set shiftwidth=2
"let g:indentLine_color_term = 239
"let g:indentLine_char = 'c'

" Visualize listchars (white space, tabs, etc)
"	set listchars=tab:>-,trail:~,extends:>,precedes:<
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<
" http://stackoverflow.com/questions/1675688/make-vim-show-all-white-spaces-as-a-character
set list
" set visual thin vertical lines at each indentation level (no plugin needed!)
" keep the SPACE character at the end of the next line:
" set list lcs=tab:\|\ 
" setting above as the whole list so it doesnt overwrite the trailing etc.
" source: https://github.com/Yggdroot/indentLine


set lazyredraw          " redraw only when we need to.
" source: http://dougblack.io/words/a-good-vimrc.html
" disabled because i seem to be getting some odd visual character mixture on
" load or scroll up/down sometimes

" set relative number makes doing selections and modifications MUCH easier (d
" 20 j, v 20 j, etc)
set relativenumber
" source: http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" automatically switch to absolute line numbers whenever Vim loses focus
":au FocusLost * :set number
":au FocusGained * :set relativenumber
" the above dont seem to be working and also seem to break syntax
" highlighting?

" Tell Vim to automatically use absolute line numbers when we’re in insert mode
" and relative numbers when we’re in normal mode:
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" source:
" http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
" source: http://amix.dk/vim/vimrc.html

set scrolloff=3               " keep at least 3 lines above/below
" source: http://stackoverflow.com/questions/164847/what-is-in-your-vimrc

" Highlight every other line
 map <leader><Tab> :set hls<CR>/\n.*\n/<CR>
" source: http://stackoverflow.com/questions/164847/what-is-in-your-vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Annoyance fixes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set visualbell           " don't beep
set noerrorbells         " don't beep

"  Startup message is irritating
set shortmess+=I
"  Accidentally hitting unwanted keys in normal mode:
nnoremap <F1> <nop>
" lets do the same for insert mode!!!
inoremap <F1> <nop>

" Allow more uses of backspace key:
"  Can't backspace past start of operation:
set backspace=indent,eol,start
" source: http://blog.sanctum.geek.nz/vim-annoyances/
" source:
" http://stackoverflow.com/questions/5419848/backspace-doesnt-work-in-gvim-7-2-64-bit-for-windows

" Session tweaks:
" "  fix annoying when you've changed your vimrc after you've saved the
" session
" set ssop-=options    " do not store global and local values in a session
" set ssop-=folds      " do not store folds
" " source:
" http://stackoverflow.com/questions/1642611/how-to-save-a-session-in-vim

" one less key to hit every time I want to save a file
nnoremap ; :
" source: http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" Editing behaviour
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase                  " needed for smartcase setting to work
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type

" makes it easy to clear out a search by typing ",<space>"
nnoremap <leader><space> :noh<cr>
" source: http://stevelosh.com/blog/2010/09/coming-home-to-vim/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding rules & setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                  " enable folding
set foldcolumn=2                " add a fold column
set foldmethod=marker           " detect triple-{ style fold markers

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
set foldlevel=0
set foldlevelstart=99
" source: http://stackoverflow.com/questions/2861627/vim-paste-in-insert-mode

" enable code folding add the following to your .vimrc.
" au FileType javascript call JavaScriptFold()
"  Disabled for now, I don't like the way it highlights words in commented code!
" source: https://github.com/jelera/vim-javascript-syntax


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype & encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" source: http://stackoverflow.com/questions/5477565/how-to-setup-vim-properly-for-editing-in-utf-8
setglobal fileencoding=utf-8           " change default file encoding when writing new files

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Show matching brackets when text indicator is over them
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=8

" Tab path completion like bash
set wildmenu
set wildmode=list:longest

" sources:
" http://nvie.com/posts/how-i-boosted-my-vim/
" http://amix.dk/vim/vimrc.html
" http://superuser.com/questions/40378/how-to-make-vims-auto-complete-behave-like-bashs-default-auto-complete

" change the working directory to something sensible
cd /

" use spaces for php (and even when tabbing insert 4 spaces [expandtab])
" autocmd FileType php setlocal shiftwidth=4 tabstop=4 expandtab

" until vim implements leading whitespace (particularly space) highlighting or a better way to do:

" define custom group:
"highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
highlight link ExtraWhitespace SpellCap
highlight ExtraWhitespace ctermfg=237 guifg=#444444 gui=undercurl cterm=undercurl guisp=#444444
" define autocmd for group:
"autocmd BufWinEnter * match ExtraWhitespace /^\s* \s*/
"autocmd BufWinEnter * match ExtraWhitespace / {2, }/
" do 2 or more leading spaces to avoid highlighting some comment doc
autocmd FileType c,cpp,java,php,ruby,python,javascript,js,css autocmd BufWinEnter * match ExtraWhitespace /^[ ]\{2,}/

nnoremap <Leader>ho :match ExtraWhitespace /^[ ]\{2,}/<CR>
nnoremap <Leader>hn :match<CR>

" sources:
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" http://www.openlogic.com/wazi/bid/188101/Create-Your-Own-Syntax-Highlighting-in-Vim
" http://stackoverflow.com/questions/7342441/how-would-i-have-vim-highlight-redundant-white-space-and-all-tabs
" http://rayninfo.co.uk/vimtips.html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree tweaks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sets the working directory to the current file's directory:
autocmd BufEnter * lcd %:p:h
" source: http://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path

map <F1> :NERDTreeToggle<CR>
" open Nerd Tree in folder of file in active buffer
map <Leader>nt :NERDTree %:p:h<CR>
" source: http://stackoverflow.com/questions/5800840/nerdtree-load-particular-directory-automatically

" customize colours colors theme highlighting
" hi Directory guifg=#96CBFE guibg=#00ff00 ctermfg=red
" source: http://www.ur-ban.com/blog/2011/04/01/nerdtree-directory-colours/
" hi treeDir guifg=#ff0000 guibg=#00ff00 ctermfg=red

" let loaded_nerd_tree = 1
let NERDChristmasTree = 0

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
" source: https://github.com/scrooloose/nerdtree/issues/201#issuecomment-9954740

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar plugin tweaks:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

" this is only for exuberant-ctags:
"let g:tagbar_ctags_bin = 'jsctags'
let g:tagbar_ctags_bin = '/usr/bin/ctags'

" this is WORKING and calling jsctags! unfortunately jsctags not generating
" good enough for modern js or our current architecture :(
"let g:tagbar_type_javascript = {
"    \ 'ctagsbin' : 'jsctags'
"\ }

"let g:tagbar_type_javascript = {
"    \ 'ctagsbin': '/usr/bin/ctags',
"    \ 'ctagstype' : 'JavaScript',
"        \ 'kinds'     : [
"        \ 'o:object',
"        \ 'v:variable',
"        \ 'n:number',
"        \ 'f:function',
"        \ 'a:array',
"        \ 's:string',
"        \ 'b:boolean'
"    \ ]
"\ }

"let g:tagbar_type_javascript = {
"    \ 'ctagsbin' : 'jsctags',
"    \ 'ctagstype' : 'JavaScript',
"    \ 'ctagsargs' : '%'
"\ }
"let g:tagbar_type_javascript = {
"    \ 'ctagsbin' : '/usr/bin/jsctags',
"    \ 'ctagstype' : 'JavaScript',
"    \ 'kinds'     : [
"        \ 'o:objects',
"        \ 'f:functions',
"        \ 'a:arrays',
"        \ 's:strings'
"    \ ]
"\ }

" does this work??
":help tags-option
"set tags=./tags,tags,/wamp/www/proto/tags,/wamp/www/proto/jsctags
"set tags=/wamp/www/proto/tags,/wamp/www/proto/jsctags
"set tags=/wamp/www/proto/jsctags


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  vdebug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command! Bp Breakpoint

" tabnew (:T)
:command! -nargs=* T tabnew <args>
" source: http://superuser.com/questions/376213/in-vi-how-do-i-map-t-equal-to-tabnew

" per: C:\Users\Ryan\vimfiles\doc\Vdebug.txt ; *VdebugTroubleshooting*
" <F5> resulting in error: E488: Trailing characters
"let g:vdebug_keymap['run'] = '<C-s>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom mappings and command shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast saving
nmap <leader>w :w!<cr>
" source: http://amix.dk/vim/vimrc.html

" ,t (disabled because of conflict with command t plugin)
" cmap ,t <Esc>:tabnew<CR>
" source: http://superuser.com/questions/376213/in-vi-how-do-i-map-t-equal-to-tabnew

" Map Ctrl+Shift+l to Insert current date and time
imap <C-S-l> <C-R>=strftime("%d/%m/%Y (%b %d) @ %H:%M")<CR>
nmap <C-S-l> "=strftime("%d/%m/%Y (%b %d) @ %H:%M")<CR>p
" command line mode (SWEEEET!)
cmap <C-S-l> <C-R>=strftime("%m-%d-%Y_")<CR>
" source: http://vim.wikia.com/wiki/Insert_current_date_or_time

" Map Ctrl+Backspace to Ctrl+W (for word deletion)
cmap <C-BS> <C-W>
" source: http://stackoverflow.com/questions/6039405/using-altbackspace-key-in-vim-command-line-to-delete-by-words


" Convert slashes to backslashes for Windows.
if has('win32')
  nmap ,ws :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
  nmap ,wl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
  nmap ,fs :let @*=expand("%")<CR>
  nmap ,fl :let @*=expand("%:p")<CR>
"  " This will copy the path in 8.3 short format, for DOS and Windows 9x
"  nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
"endif
else
  nmap ,fs :let @+=expand("%")<CR>
  nmap ,fl :let @+=expand("%:p")<CR>
endif
" source: http://vim.wikia.com/wiki/Copy_filename_to_clipboard


" Allow saving of files as sudo when I forgot to start vim using sudo. (:w!!)
" was (:w , but when type 'w' there was a noticable lag, changed to 's', so
" now (:s!!)
" 15/10/2014 (Oct 15) @ 21:21 update: noticable delay even just typing 's',
" disabling for now:
"cmap ss!! w !sudo tee > /dev/null %
" source: http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work


" Shortcut to rapidly toggle numbers
nmap <leader>n :set number!<CR>
" source: ME! based on setlist similar: http://vimcasts.org/episodes/show-invisibles/

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" source: http://vimcasts.org/episodes/show-invisibles/


" Alphabetically sort CSS properties in file with :SortCSS
:command! SortCSS :g#\({\n\)\@<=#.,/}/sort
" source: various
" source 1:
" http://code.tutsplus.com/articles/top-10-pitfalls-when-switching-to-vim--net-18113
" source 2:
" http://stackoverflow.com/questions/3050797/how-to-alphabetize-a-css-file-in-vim
" my aliases for SortCSS (just makes it easier to find in command mode)
:command! CSSSort SortCSS
:command! SortCSSBraceContents SortCSS
" to sort on just selected simply add sort! o_O , e.g. :'<,'>sort

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End Custom mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"function! FormatJSON() :%!python -m json.tool endfunction
com! FormatJSON %!python -m json.tool
" usage
" :FormatJSON
" source: https://coderwall.com/p/faceag

" remove trailing whitespace in vim automatically when saving!
fun! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\s\+$//e
	call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,javascript,js,css autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"autocmd BufWritePre *.js :call <SID>StripTrailingWhitespaces()
" source: http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OS Differences
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set shell to something other than Windows Command Prompt
if has('win32')
	set shellcmdflag=--login\ -c
	set shellxquote=\"
	set shell=/Development/Cygwin/bin/bash
endif
" source: http://vim.wikia.com/wiki/Use_cygwin_shell

" backup to ~/.tmp
"set backup
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set backupskip=/tmp/*,/private/tmp/*
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set writebackup
" OR (disable swap files):
set noswapfile
" source: http://stackoverflow.com/questions/821902/disabling-swap-files-creation-in-vim
set shellslash

" sources:
" http://nvie.com/posts/how-i-boosted-my-vim/
" http://amix.dk/vim/vimrc.html

" Set column right margin 
"  to help when to know to break code onto next lines
set colorcolumn=100
" Vim 7.3 introduced colorcolumn 
" source:
" http://stackoverflow.com/questions/2182427/right-margin-in-vim 


"hi Search cterm=NONE ctermfg=grey ctermbg=blue
" http://stackoverflow.com/questions/7103173/vim-how-to-change-the-highlight-color-for-search-hits-and-quickfix-selection



" attempt to maximize gVim window (not exactly but better)
" set lines=999 columns=999
" source: http://superuser.com/questions/140419/how-to-start-gvim-maximized

" attempt Maximize window completely:
" au GUIEnter * simalt x " x on an English Windows version. n on a French one
" source: http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size

" always show tab bar:
set showtabline=2
" source: http://vim.1045645.n5.nabble.com/Always-show-tab-bar-in-MacVim-td1215150.html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSbeautify settings
" https://github.com/maksimr/vim-jsbeautify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:config_Beautifier = {}
let g:config_Beautifier['js'] = {}
let g:config_Beautifier['js'].indent_size = '4'
let g:config_Beautifier['js'].indent_style = 'tab'
let g:config_Beautifier['js'].brace_style = 'collapse'
let g:config_Beautifier['js'].keep_array_indentation = 'true'

map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End JSbeautify settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" maximize vim at startup ( i think i need to keep this at the bottom of the
" vimrc so it resizes correctly after all the plugin and other changes
" (showtabline=2 , etc)
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  "set lines=999 columns=999
  set lines=57 columns=210
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif
" source: http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size

" NOTE: keep at bottom of file:
" reload your .vimrc file without restarting vim
" Only if you're editing it
":so % 
" Else if not editing this file directly
":so $MYVIMRC
