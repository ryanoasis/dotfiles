


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

" Sets the font and size using font that shows special characters for Powerline
"set guifont=Consolas\ for\ Powerline\ FixedD:h11
" set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
" working well:
"set guifont=Source\ Code\ Pro\ for\ Powerline\ 11
"set guifont=ProggyCleanTT\ Plus\ Nerd\ File\ Types\ Regular\ 14
"set guifont=ProggyCleanTT\ Regular\ 24
" check for gaps:
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 5

"set guifont=Literation\ Mono\ Powerline\ Plus\ Nerd\ File\ Types\ 12
"set guifont=Literation\ Mono\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 12
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 12
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12

"set guifont=Literation\ Mono\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 12
"set guifont=Monaco\ Plus\ Nerd\ File\ Types\ Regular\ 12

"set guifont=IBM\ 3270\ Plus\ Nerd\ File\ Types\ 12

"set guifont=Anonymice\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"set guifont=Sauce\ Code\ Powerline\ 11
"set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ 12
"set guifont=Purisa,\ Droid\ Sans\ Mono\ 11,\ Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"set guifont=PurisaXyz,\ Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"set guifont=PurisaXyz,Purisa
"set guifont=Purisa2,\ Purisa
"set guifontwide=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ 11

" test 1000 em fonts:
"set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ 11
"set guifont=Ubuntu\ Mono\ Plus\ Nerd\ File\ Types\ 12
"set guifont=Anonymice\ Powerline\ Plus\ Nerd\ File\ Types\ Regular\ 11
"set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Plus\ Nerd\ File\ Types\ Regular\ 12

"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12

"set guifont=Courier10\ BT\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Book\ 12

"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 12
"set guifont=PragmataPro\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Regular\ 12

"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ 12

"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Regular\ 12
"set guifont=PragmataPro\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12
"set guifont=Fura\ Code\ Regular\ 12
"set guifont=Fira\ Code\ Retina\ Regular\ 12

"set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ 12

"let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['db'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['less'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['styl'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sh'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['php'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['wav'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['diff'] = ''

" test setting folders in flags:
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:WebDevIconsUnicodeDecorateFolderNodeDefaultSymbol = ''

" set guifont=Ubuntu\ Mono:h8
" set guifont=ProggyCleanTT\ 16
" Sets the font and size
"set guifont="Consolas:h11"

" force to use vim keys more often and give more screen realestate:
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
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

" kinda fun but not too great
"" change cursorlinenr based on mode
"function! InsertStatuslineColor(mode)
"   echom a:mode
"  if a:mode == 'i'
"     echom 'change to i'
"    "hi cursorLineNr guibg=magenta
"    "hi link cursorLineNr iCursor
"    hi cursorLineNr ctermfg=199 ctermbg=11 guifg=#ff00aa guibg=#8fbfdc
"  elseif a:mode == 'r'
"     echom 'change to r'
"    hi cursorLineNr guibg=blue
"  else
"     echom 'change to other'
"    "hi cursorLineNr guibg=red
"    "hi link cursorLineNr NCursor
"    hi cursorLineNr ctermfg=22 guifg=#00500f guibg=#afd700
"  endif
"endfunction

"au InsertEnter * call InsertStatuslineColor(v:insertmode)
"au InsertChange * call InsertStatuslineColor(v:insertmode)
""au InsertLeave * hi cursorLineNr guibg=green
""au InsertLeave * hi link cursorLineNr NCursor
"au InsertLeave * hi cursorLineNr ctermfg=22 guifg=#00500f guibg=#afd700

"" default the statusline to green when entering Vim
""hi cursorLineNr guibg=green
""hi link cursorLineNr NCursor
"hi cursorLineNr ctermfg=22 guifg=#00500f guibg=#afd700
" source:
" http://vim.wikia.com/wiki/Change_statusline_color_to_show_insert_or_normal_mode

" NOTE: keep at bottom of file:
" reload your .vimrc file without restarting vim
" Only if you're editing it
":so %
" Else if not editing this file directly
":so $MYGVIMRC

