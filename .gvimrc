" vim:fdm=marker
" file: .gvimrc
" author: ryanoasis (Ryan L McIntyre)
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" License {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MIT
" }}}1

" Dynamic increase or decrease font size:
" source: http://vim.wikia.com/wiki/VimTip414
map ,- :let &guifont = substitute(&guifont, '\(\d\+\)', '\="" . (submatch(1) - 1)', '')<CR>
map ,+ :let &guifont = substitute(&guifont, '\(\d\+\)', '\="" . (submatch(1) + 1)', '')<CR>
map ,= :let &guifont = substitute(&guifont, '\(\d\+\)', '\="" . (submatch(1) + 1)', '')<CR>


" attempt to maximize gVim window (not exactly but better)
" set lines=999 columns=999
" temporary for testing vim-webdevicons
" set lines=3 columns=66
" source: http://superuser.com/questions/140419/how-to-start-gvim-maximized

" attempt Maximize window completely:
" au GUIEnter * simalt x " x on an English Windows version. n on a French one
" source: http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Font {{{3
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set guifont=Sauce\ Code\ Pro\ Nerd\ Font\ 12


" force to use vim keys more often and give more screen realestate:
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=e  "remove gui tabs
"set guioptions-=r  "remove right-hand scroll bar
" source: http://vim.wikia.com/wiki/Hide_toolbar_or_menus_to_see_more_text

" Set Color of ColorColumn
if exists('+colorcolumn')
  "set colorcolumn=100
  "highlight ColorColumn guibg=Black
else
  "au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" Nice overflow of column decoration :)
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
" sources:
" http://choorucode.com/2011/07/29/vim-set-color-of-colorcolumn/
" http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns

" vim-how-to-change-the-current-item-highlight-color-when-substituting
" The highlight group you want is “IncSearch” even if you don’t have the the ‘incsearch’ option enabled—it is also used for the current substitution when confirmation is enabled.
highlight IncSearch guifg=firebrick1 guibg=firebrick4
" source: http://denihow.com/vim-how-to-change-the-current-item-highlight-color-when-substituting/


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cursor visual tweaks {{{3
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"highlight Cursor guifg=white guibg=firebrick4
"highlight iCursor guifg=white guibg=firebrick4
"
" lets match the cursor mode colors to my airline theme colors :)
" This can only be done in gvim (GUI vim):
highlight iCursor ctermfg=199 ctermbg=cyan guifg=#ff00aa guibg=#8fbfdc
highlight NCursor ctermfg=22 guifg=#005f00 guibg=#afd700

"highlight! def link iCursor Function
"set guicursor=n-v-c:block-Cursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=i-ci:ver25-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10
" source: http://stackoverflow.com/questions/6230490/how-i-can-change-cursor-color-in-color-scheme-vim

" More fix annoyances :)
"" disable cursor blinking when in normal mode:
set guicursor+=n:blinkon0
"set guicursor+=n-v-c-i:blinkon0
"set guicursor+=i:ver100-iCursor-blinkon0
set guicursor+=i:blinkon0
" source: http://vim.wikia.com/wiki/Configuring_the_cursor

set guicursor=i-ci:ver30-iCursor-blinkwait0-blinkon0-blinkoff0
set guicursor=n:block-NCursor-blinkwait0-blinkon0-blinkoff0

" set the cursor to a vertical line in insert mode and a solid block
" " in command mode
"let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" add right-click menu
set mousemodel=popup


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" notes {{{3
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NOTE: keep at bottom of file:
" reload your .vimrc file without restarting vim
" Only if you're editing it
":so %
" Else if not editing this file directly
":so $MYGVIMRC


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" re-sourcing fixes {{{3
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

    "augroup devicons_nerdtree
    "    autocmd FileType nerdtree setlocal list
    "    autocmd FileType nerdtree setlocal listchars=space:.
    "    autocmd FileType nerdtree setlocal nolist
    "    "autocmd FileType nerdtree setlocal ambiwidth=double
    "augroup END
