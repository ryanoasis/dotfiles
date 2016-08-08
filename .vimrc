" vim:fdm=marker
" file: .vimrc
" author: ryanoasis (Ryan L McIntyre)
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" License {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @todo
" }}}1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Leader shortcuts {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ','
let g:mapleader = ','
" source: http://amix.dk/vim/vimrc.html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Package management (vundle) and plugins {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/Dropbox/vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'joonty/vdebug'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-abolish'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'maksimr/vim-jsbeautify'
" einars/js-beautify moved to beautify-web/js-beautify
Plugin 'beautify-web/js-beautify'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'marijnh/tern_for_vim'
Plugin 'ramitos/jsctags'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sjl/gundo.vim'
"Plugin 'tpope/vim-markdown'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
"Plugin 'majutsushi/tagbar'
Plugin 'StanAngeloff/php.vim'
Plugin 'chrisbra/csv.vim'
Plugin 'tpope/vim-unimpaired'
" Plugin 'lilydjwg/colorizer' " temporarily disabled due to performance issues
" and seemingly not maintained anymore, now using: gorodinskiy/vim-coloresque
Plugin 'gorodinskiy/vim-coloresque'
"Plugin 'Yggdroot/indentLine'
" dont need right now, working in vim for tabs with set list lcs=tab...
Plugin 'justinmk/vim-gtfo'
Plugin 'vim-scripts/text-object-left-and-right'
"Plugin 'endel/ctrlp-filetype.vim'
" for files that are not tracked in version control (git):
" Plugin 'chrisbra/changesPlugin' " didnt like that it conflicted with
" gitgutter (didnt seem like there was a way to have both) and the styling i didnt find too appealing
Plugin 'mattn/gist-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/syntastic'
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'heavenshell/vim-jsdoc'
Bundle 'ervandew/supertab'
" Track the engine.
Bundle 'SirVer/ultisnips'
Bundle 'terryma/vim-smooth-scroll'
Bundle 'itchyny/lightline.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
"Plugin 'koron/minimap-vim'
Plugin 'mhinz/vim-startify'
"Plugin 'mhinz/vim-signify' " still liking vim-gitgutter more
Plugin 'ryanoasis/vim-devicons'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'mxw/vim-jsx'
Plugin 'csscomb/vim-csscomb'
Plugin 'dracula/vim'
"Plugin 'vim-ctrlspace/vim-ctrlspace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on " for nerdcommenter
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set color term to 256 colors
" need to use with CSApprox script to work (huh?)
set t_Co=256

syntax on
"colorscheme robinhood
"colorscheme elflord
"colorscheme obsidian2
"colorscheme jellybeans
"colorscheme distinguished
colorscheme jellybeans

" working directory always where the active buffer is located
"set autochdir
augroup vimrc_set_working_dir
  au!
  autocmd BufEnter * silent! lcd %:p:h
augroup end
" source: http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
" breaks load session?

set ruler

" set hidden
set hidden
" source: http://nvie.com/posts/how-i-boosted-my-vim/

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
"	¦, ┆, ︙ or │
"set listchars=tab:\|\ ,trail:~,extends:>,precedes:<
set listchars=tab:\\ ,trail:~,extends:>,precedes:<
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
" JsDoc config {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:jsdoc_input_description = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_return_description = 0
let g:jsdoc_additional_descriptions = 0
let g:jsdoc_access_descriptions = 2
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

" override default mapping:
"nmap <silent> <C-l> <Plug>(jsdoc)
nmap <silent> <leader>d <Plug>(jsdoc)
"nmap ,d :<C-u>call AddJSDoc()<CR>

" use some synonyms
let g:jsdoc_tags = {}
let g:jsdoc_tags['returns'] = 'return'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic config {{{1
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
let g:syntastic_javascript_jshint_args = ' --config /home/ryan/dotfiles/.jshintrc'
let g:syntastic_javascript_jscs_args = ' --fix --config /home/ryan/dotfiles/.jscsrc --reporter text --force'

" for troubleshooting:
"let g:syntastic_debug=3

" Q. Syntastic supports several checkers for my filetype - how do I tell it
" which one(s) to use?
"let g:syntastic_javascript_checkers = ['jshint', 'jscs', 'jsxhint']
let g:syntastic_javascript_checkers = ['jsxcs', 'jsxhint']
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

let g:syntastic_vim_checkers = ['vint']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe (YCM) config {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" When this option is set to 1, YCM's identifier completer will also collect
" identifiers from strings and comments. Otherwise, the text in comments and
" strings will be ignored.
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" source: https://github.com/Valloric/YouCompleteMe

" disable preview window on auto-complete:
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0


" try to fix random freeze on autocomplete:
let g:ycm_register_as_syntastic_checker = 0

" source: https://github.com/Valloric/YouCompleteMe#i-get-a-weird-window-at-the-top-of-my-file-when-i-use-the-semantic-engine

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe (YCM), SuperTab, and UltiSnips config {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<S-tab>"
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" from ultisnips help:
" Supertab - UltiSnips has built-in support for Supertab. Just use a recent
" enough version of both plugins and <tab> will either expand a snippet or defer
" to Supertab for expansion.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-powerline (obselete now using airline) {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" recommended to put in vimrc NOT gvimrc (too late loading)
" let g:Powerline_symbols = 'fancy'
" fixes statusline only appearing in split windows mode
set laststatus=2
" source: https://github.com/Lokaltog/vim-powerline

" dont need showmode indicator now because using awesome Powerline :D
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

"let g:airline#extensions#tabline#fnamemod = 'abcd :p'

" define the set of text to display for each mode.  >
let g:airline_mode_map = {
   \ '__' : '-',
   \ 'n'  : 'N',
   \ 'i'  : 'I ',
   \ 'R'  : 'R',
   \ 'c'  : 'C',
   \ 'v'  : 'ಠ',
   \ 'V'  : 'V-LINE',
   \ '' : 'V-BLOCK',
   \ 's'  : 'S',
   \ 'S'  : 'S',
   \ '' : 'S-BLOCK',
   \ }

"let g:airline#extensions#tabline#formatter = 'unique_tail'

" test disabling the extension
"let g:loaded_airline = 1

" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'
" source: https://github.com/vim-airline/vim-airline/issues/372

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" lightline.vim {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" disable loading:
let g:loaded_lightline = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-markdown (plasticboy) {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1
" source: https://github.com/plasticboy/vim-markdown/issues/162
let g:vim_markdown_initial_foldlevel = 1

" disable conceal in markdown
let g:vim_markdown_conceal = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP settings {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" ctrlp extensions:
" CtrlP for filetype
"let g:ctrlp_extensions = ['filetype']
" silent! nnoremap <unique> <silent> <Leader>f :CtrlPFiletype<CR>
" source: https://github.com/endel/ctrlp-filetype.vim

" Faster searching if 'ag' present
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 0 " are we sure???
endif
" source: http://dougblack.io/words/a-good-vimrc.html#ctrlp-section

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlspace {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('gui_running')
    " Settings for MacVim and Inconsolata font
    let g:CtrlSpaceSymbols = { 'File': '◯', 'CTab': '▣', 'Tabs': '▢' }
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gundo {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" by default <c-p> command open in MRU mode
let g:ctrlp_cmd = 'CtrlPMRU'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tabular {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" custom mapping shortcuts
"if exists(':Tabularize')
	nmap <Leader>t= :Tabularize /=<CR>
	vmap <Leader>t= :Tabularize /=<CR>
	"nmap <Leader>t| :Tabularize /|<CR>
	"vmap <Leader>t| :Tabularize /|<CR>
	nmap <Leader>t: :Tabularize /:<CR>
	vmap <Leader>t: :Tabularize /:<CR>
"endif
" e.g. If you were in normal or visual mode, you could type ,t= to align
" equals signs
" source: http://vimcasts.org/episodes/aligning-text-with-tabular-vim/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GitGutter {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_max_signs = 500

" attempt to make gitgutter update faster
"set updatetime=50

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-javascript {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cole=0
" source: https://github.com/pangloss/vim-javascript/issues/101#issuecomment-45543789

" change to 1 to enable concealing
let g:javascript_conceal = 0

let g:javascript_conceal_function   = 'ƒ'
let g:javascript_conceal_null       = 'ø'
let g:javascript_conceal_this       = '@'
let g:javascript_conceal_return     = '⇚'
let g:javascript_conceal_undefined  = '¿'
let g:javascript_conceal_NaN        = 'ℕ'
let g:javascript_conceal_prototype  = '¶'

" fix conceal color
highlight Conceal guifg=#ffb964 guibg=#151515

"highlight link Conceal SpellCap
"highlight link Conceal comment
" source: https://github.com/pangloss/vim-javascript/issues/151

" Enables HTML/CSS syntax highlighting in your JavaScript file.
let g:javascript_enable_domhtmlcss = 1
" source: https://github.com/pangloss/vim-javascript

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" color tweaks {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"hi Comment guibg=#212121
"hi jsDocParam guibg=#212121
"hi jsDocTags guibg=#212121

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorizer {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" attempt to improve vim performance:
"let g:colorizer_startup = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" smooth-scroll {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" temporarily disabling to see if it is causing performance issues with
" minimap:
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 1)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 1)<CR>

"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Annoyance fixes {{{1
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

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has('autocmd')
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
" source: http://stackoverflow.com/questions/774560/in-vim-how-do-i-get-a-file-to-open-at-the-same-line-number-i-closed-it-at-last

" disable continuation of comments to the next line
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
" source:
" http://superuser.com/questions/271023/vim-can-i-disable-continuation-of-comments-to-the-next-line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing behaviour {{{1
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
" Folding rules & setting {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable                  " enable folding
set foldcolumn=4                " add a fold column
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
" filetype & encoding {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
" set scriptencoding after 'encoding' and when using multibyte chars
scriptencoding utf-8
" source: http://rbtnn.hateblo.jp/entry/2014/12/28/010913

" source: http://stackoverflow.com/questions/5477565/how-to-setup-vim-properly-for-editing-in-utf-8
setglobal fileencoding=utf-8           " change default file encoding when writing new files

" Use Unix as the standard file type
set ffs=unix,dos,mac


" Tab path completion like bash
set wildmenu
set wildmode=list:longest

" sources:
" http://nvie.com/posts/how-i-boosted-my-vim/
" http://amix.dk/vim/vimrc.html
" http://superuser.com/questions/40378/how-to-make-vims-auto-complete-behave-like-bashs-default-auto-complete

" change the working directory to something sensible
" cd / " seems to be set multiple times?
" however change it to match directory of buffer after that:
" autocmd BufEnter * lcd %:p:h

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
augroup vimrc_extra_whitespace_source_files
  au!
  autocmd FileType c,cpp,java,php,ruby,python,javascript,js,css autocmd BufWinEnter <buffer> match ExtraWhitespace /^[ ]\{2,}/
augroup end

nnoremap <Leader>ho :match ExtraWhitespace /^[ ]\{2,}/<CR>
nnoremap <Leader>hn :match<CR>

" sources:
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" http://www.openlogic.com/wazi/bid/188101/Create-Your-Own-Syntax-Highlighting-in-Vim
" http://stackoverflow.com/questions/7342441/how-would-i-have-vim-highlight-redundant-white-space-and-all-tabs
" http://rayninfo.co.uk/vimtips.html

" File types to setup space indentation:
augroup vimrc_file_type_indentation
  au!
  autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 expandtab
  autocmd FileType python setlocal shiftwidth=2 tabstop=2 expandtab
  autocmd FileType vim setlocal shiftwidth=2 tabstop=2 expandtab
augroup end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree tabs {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_new_tab = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree tweaks {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sets the working directory to the current file's directory:
"autocmd BufEnter * lcd %:p:h
" source: http://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path

map <F1> :NERDTreeToggle %:p:h<CR>
" open Nerd Tree in folder of file in active buffer
map <Leader>nt :NERDTreeToggle %:p:h<CR>
" source: http://stackoverflow.com/questions/5800840/nerdtree-load-particular-directory-automatically

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('jsx', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', '#151515')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868', '#151515')

" source: https://github.com/scrooloose/nerdtree/issues/201#issuecomment-9954740


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar plugin tweaks {{{1
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

" trying jsdoc-tags:
let g:tagbar_type_javascript = {
    \ 'ctagsbin': 'node',
    \ 'ctagsargs': '/usr/local/lib/node_modules/jsdoc-tags/bin/jsdoc-tags -aq',
    \ 'kinds': [
        \ 'c:classes',
        \ 'n:namespaces',
        \ 'p:properties:0:1',
        \ 'f:functions:0:1',
        \ 'e:event',
    \ ],
    \ 'kind2scope': {
        \ 'n' : 'namespace',
        \ 'c' : 'class'
    \ },
    \ 'scope2kind': {
        \ 'namespace': 'n',
        \ 'class': 'c'
    \ },
    \ 'sro': '.',
    \ 'replace': 1
\ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vdebug {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command! Bp Breakpoint


" per: C:\Users\Ryan\vimfiles\doc\Vdebug.txt ; *VdebugTroubleshooting*
" <F5> resulting in error: E488: Trailing characters
"let g:vdebug_keymap['run'] = '<C-s>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom mappings and command shortcuts {{{1
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

" Map Ctrl+Shift+x to checkmark insert
imap <C-S-x> ✓<CR>
" @todo WIP: make work in normal mode:
" nmap <C-S-x> "✓<CR>p


" pandoc /home/ryan/Acronym/meetings/11-19-2014_Weekly_strategy_meeting.md -t mediawiki -o /home/ryan/Acronym/meetings/11-19-2014_Weekly_strategy_meeting.wiki2
function! PandocFileToMediaWiki()
	execute '!pandoc ' . buffer_name('%') . ' -t mediawiki -o ' . expand('%:r') . '.wiki'
endfunction

" convert markdown to mediawiki
:command! PandocMediaWiki :call PandocFileToMediaWiki()<CR>

" tabnew (:T)
:command! -nargs=* T tabnew <args>
" source: http://superuser.com/questions/376213/in-vi-how-do-i-map-t-equal-to-tabnew

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
" lets try it again, w causes hanging on long file, lets use 'z'
cmap z!! w !sudo tee > /dev/null %
" source: http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work


" Shortcut to rapidly toggle numbers
nmap <leader>n :set number!<CR>
" source: ME! based on setlist similar: http://vimcasts.org/episodes/show-invisibles/

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" source: http://vimcasts.org/episodes/show-invisibles/

" no highlight on Escape key press
nnoremap <Esc> :noh<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" eg /* .something { } */
" giving up and using CSSComb XD

" Alphabetically sort CSS properties in file with :SortCSS
":command! SortCSS :g#\({\n\)\@<=#.,/}/sort
" source: various
" source 1:
" http://code.tutsplus.com/articles/top-10-pitfalls-when-switching-to-vim--net-18113
" source 2:
" http://stackoverflow.com/questions/3050797/how-to-alphabetize-a-css-file-in-vim
" my aliases for SortCSS (just makes it easier to find in command mode)
":command! CSSSort SortCSS
":command! SortCSSBraceContents SortCSS
" to sort on just selected simply add sort! o_O , e.g. :'<,'>sort

" Map ctrl+f to run CSScomb
autocmd FileType css noremap <buffer> <c-f> :CSScomb<CR>
" Automatically comb your CSS on save
autocmd BufWritePre,FileWritePre *.css,*.less,*.scss,*.sass silent! :CSScomb

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HTML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:vnoremap <leader>x :!tidy -q -i --show-errors 0 --markup no --indent auto<CR>
:nnoremap <leader>x :!tidy -q -i --show-errors 0 --markup no --indent auto %<CR>
" source: http://vim.wikia.com/wiki/Cleanup_your_HTML

imap <C-Return> <CR><CR><C-o>k<C-t>
" source:
" http://stackoverflow.com/questions/4477031/vim-auto-indent-with-newline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Functions {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"function! FormatJSON() :%!python -m json.tool endfunction
com! FormatJSON %!python -m json.tool
" usage
" :FormatJSON
" source: https://coderwall.com/p/faceag

" remove trailing whitespace in vim automatically when saving!
fun! <SID>StripTrailingWhitespaces()
	let l = line('.')
	let c = col('.')
	%s/\s\+$//e
	call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,javascript,js,css,md,mkd,html autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"autocmd BufWritePre *.js :call <SID>StripTrailingWhitespaces()
" source: http://stackoverflow.com/questions/356126/how-can-you-automatically-remove-trailing-whitespace-in-vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OS Differences {{{1
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
"set colorcolumn=100
" Vim 7.3 introduced colorcolumn 
" source:
" http://stackoverflow.com/questions/2182427/right-margin-in-vim 


"hi Search cterm=NONE ctermfg=grey ctermbg=blue
" http://stackoverflow.com/questions/7103173/vim-how-to-change-the-highlight-color-for-search-hits-and-quickfix-selection


" attempt to maximize gVim window (not exactly but better)
"set lines=999 columns=999
" source: http://superuser.com/questions/140419/how-to-start-gvim-maximized

" attempt Maximize window completely:
" au GUIEnter * simalt x " x on an English Windows version. n on a French one
" source: http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size

" always show tab bar:
set showtabline=2
" source: http://vim.1045645.n5.nabble.com/Always-show-tab-bar-in-MacVim-td1215150.html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSbeautify settings {{{1
" https://github.com/maksimr/vim-jsbeautify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:config_Beautifier = {}
"let g:config_Beautifier['js'] = {}
"let g:config_Beautifier['js'].indent_size = '4'
"let g:config_Beautifier['js'].indent_style = 'tab'
"let g:config_Beautifier['js'].brace_style = 'none'
"let g:config_Beautifier['js'].keep_array_indentation = 'true'
" see .editorconfig instead

" ctrl+f
map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript vnoremap <buffer> <c-f> :call RangeJsBeautify()<cr>

" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify() <bar> execute 'normal gg=G'<cr>
autocmd FileType php noremap <buffer> <c-f> :call HtmlBeautify() <bar> execute 'normal gg=G'<cr>

autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify() <bar> execute 'normal gg=G'<cr>
autocmd FileType php vnoremap <buffer> <c-f> :call RangeHtmlBeautify() <bar> execute 'normal gg=G'<cr>
" sources
" http://stackoverflow.com/questions/815548/how-do-i-tidy-up-an-html-files-indentation-in-vi
" https://github.com/maksimr/vim-jsbeautify


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PHP settings {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" source: https://jordaneldredge.com/blog/setting-up-php-completion-in-vim/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Window size at startup {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" maximize vim at startup ( i think i need to keep this at the bottom of the
" vimrc so it resizes correctly after all the plugin and other changes
" (showtabline=2 , etc)
if has('gui_running')
  " GUI is running or is about to start.
  " Maximize gvim window.
  "set lines=999 columns=999
  set lines=57 columns=210
else
  " This is console Vim.
  if exists('+lines')
    "set lines=50
  endif
  if exists('+columns')
    "set columns=100
  endif
endif
" source: http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size

"let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
"let g:webdevicons_conceal_nerdtree_brackets = 0

"hi Comment guibg=#212121
"hi jsDocParam guibg=#212121
"hi jsDocTags guibg=#212121
"hi Type guibg=#212121
hi jsThis term=bold cterm=bold ctermfg=214 guifg=#ffb964
hi jsFunction term=bold cterm=bold ctermfg=205 gui=bold guifg=#cc4c8c
hi jsFuncName ctermfg=205 guifg=#cc4c8c
hi jsFunctionKey ctermfg=205 guifg=#cc4c8c
hi jsFuncArgs term=italic cterm=italic gui=italic guifg=#8197bf
hi jsDocTags term=bold cterm=bold ctermfg=103 gui=bold guifg=#8197bf guibg=#212121
hi jsDocComment term=bold cterm=bold ctermfg=244 gui=italic guibg=#212121 guifg=#888888
hi jsComment term=italic cterm=italic gui=italic ctermfg=244 guibg=#212121 guifg=#888888
hi jsDocParam term=bold cterm=bold ctermbg=233 ctermfg=103 guibg=#212121 guifg=#8197bf
hi jsDocType term=underline cterm=underline ctermfg=215 guibg=#212121 guifg=#ffb964
hi jsDocTypeNoParam term=underline cterm=underline ctermfg=215 guibg=#212121 guifg=#ffb964

" tweak color scheme colors slightly:
hi Special guifg=#DF7401

" tweak SpecialKey background so it always matches theme:
"let oldcolor = synIDattr(synIDtrans(synID(line("."), col("."), 1)), "fg")
hi SpecialKey ctermbg=233 guibg=#151515
" matches jellybeans (@todo make dynamic)

" syntastic tweak
"hi SpellCap ctermfg=www ctermbg=xxx guifg=#yyyyyy guibg=#zzzzzz
" got this from obsidian colorscheme via: :hi SpellCap
"hi SpellCap term=reverse cterm=undercurl ctermbg=12 gui=undercurl guisp=#eeee00
hi clear SpellCap
hi clear SpellBad
hi SpellCap term=reverse cterm=undercurl ctermbg=233 guibg=#151515 gui=undercurl guisp=#eeee00
" source:
" http://stackoverflow.com/questions/17677441/changing-error-highlight-color-used-by-syntastic

" the above doesnt change the warning symbol at all (obsidian orig fg color
" was #C0A25F)
" guisp for undercurl
" (http://vimdoc.sourceforge.net/htmldoc/syntax.html#highlight-guisp)
hi SyntasticWarningSign ctermfg=184 guifg=#eeee00
hi SpellBad cterm=undercurl gui=undercurl ctermfg=184 guisp=#eeee00
hi SyntasticErrorSign ctermfg=184 guifg=#eeee00

" flagship
" disable while using airline:
let g:loaded_flagship = 1

"let g:loaded_nerdtree_git_status = 1

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" set font:
set guifont=Fira\ Code\ Medium\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Medium\ 12

" testing extra-powerline-symbols
" testing rounded separators (extra-powerline-symbols):
"let g:airline_left_sep = "\uE0BA"
"let g:airline_right_sep = "\uE0BB"

" set the CN (column number) symbol:
let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

"let g:webdevicons_enable_ctrlp = 0

set verbosefile=/home/ryan/debug-vim-verbose.txt

"let g:ctrlp_line_prefix = WebDevIconsGetFileTypeSymbol('foo.txt')

" (,zz) Debug currently cursor hilighted area with the syntax rule being used
map <Leader>zz :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:webdevicons_gui_glyph_fix = 1

"let &t_SI .= "\<Esc>[?2004h"
"let &t_EI .= "\<Esc>[?2004l"

"inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

"function! XTermPasteBegin()
"  set pastetoggle=<Esc>[201~
"  set paste
"  return ""
"endfunction

" source: https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode

map <Leader>p :set paste<CR>o<esc>"+]p:set nopaste<cr>
" source: http://tilvim.com/2014/03/18/a-better-paste.html

" fix opening in split when using vim startify:
autocmd User Startified setlocal buftype=
" source: https://github.com/mhinz/vim-startify/blob/master/doc/startify.txt

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KO Project Specific {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ctrlp (Ctrl + k) launch at project root:
nnoremap <C-k> :CtrlP ~/www/ko/proto/<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Experiments {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vimrc experimental and/or test settings:
source ~/.vimrc_experiments

" end experiments }}}1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bottom {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NOTE: keep at bottom of file:
" reload your .vimrc file without restarting vim
" Only if you're editing it
":so % 
" Else if not editing this file directly
":so $MYVIMRC
