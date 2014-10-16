
" tweak color scheme colors slightly:
hi Special guifg=#DF7401

" tweak SpecialKey background so it always matches theme:
"let oldcolor = synIDattr(synIDtrans(synID(line("."), col("."), 1)), "fg")
hi SpecialKey guibg=#151515
" matches jellybeans (@todo make dynamic)

" syntastic tweak
"hi SpellCap ctermfg=www ctermbg=xxx guifg=#yyyyyy guibg=#zzzzzz
" got this from obsidian colorscheme via: :hi SpellCap
"hi SpellCap term=reverse cterm=undercurl ctermbg=12 gui=undercurl guisp=#eeee00
hi clear SpellCap
hi SpellCap term=reverse cterm=undercurl ctermbg=233 guibg=#151515 gui=undercurl guisp=#eeee00
" source:
" http://stackoverflow.com/questions/17677441/changing-error-highlight-color-used-by-syntastic

" the above doesnt change the warning symbol at all (obsidian orig fg color
" was #C0A25F)
"hi SyntasticWarningSign guifg=#eeee00 guibg=#151515
hi SyntasticWarningSign guifg=#ffffff guibg=#808000

hi SpellBad cterm=undercurl ctermbg=233 guibg=#151515 gui=undercurl guisp=#808000

"hi SyntasticErrorSign guifg=#870000 guibg=#b2b2b2
"hi SyntasticErrorSign guifg=#ffffff guibg=#870000
hi SyntasticErrorSign guifg=#ffffff guibg=#808000

" Dynamic increase or decrease font size:
" source: http://vim.wikia.com/wiki/VimTip414
map ,- :let &guifont = substitute(&guifont, '\(\d\+\)', '\="" . (submatch(1) - 1)', '')<CR>
map ,+ :let &guifont = substitute(&guifont, '\(\d\+\)', '\="" . (submatch(1) + 1)', '')<CR>
map ,= :let &guifont = substitute(&guifont, '\(\d\+\)', '\="" . (submatch(1) + 1)', '')<CR>


" attempt to maximize gVim window (not exactly but better)
" set lines=999 columns=999
" source: http://superuser.com/questions/140419/how-to-start-gvim-maximized

" attempt Maximize window completely:
" au GUIEnter * simalt x " x on an English Windows version. n on a French one
" source: http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size

" Sets the font and size using font that shows special characters for Powerline
"set guifont=Consolas\ for\ Powerline\ FixedD:h11
" set guifont=Droid\ Sans\ Mono\ for\ Powerline:h11
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
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
  set colorcolumn=100
  highlight ColorColumn guibg=Black
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
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

" More fix annoyances :)
"" disable cursor blinking when in normal mode:
set guicursor+=n:blinkon0
" source: http://vim.wikia.com/wiki/Configuring_the_cursor

" add right-click menu
set mousemodel=popup



" JSDoc形式のコメントを追加(functionの行で実行する)
" hogeFunc: function() の形式と function hogeFunc() に対応
" 関数定義でない場合は、コメントだけ出力する
function! AddJSDoc()
  let l:jsDocregex = '^.\{-}\s*\([a-zA-Z_$][a-zA-Z0-9_$]*\)\s*[:=]\s*function\s*(\s*\([^)]*\)\s*).*$'
  let l:jsDocregex2 = '^.\{-}\s*function\s\+\([a-zA-Z_$][a-zA-Z0-9_$]*\)\s*(\s*\([^)]*\)\s*).*$'

  let l:line = getline('.')
  let l:indent = indent('.')
  let l:space = repeat(' ', l:indent)

  if l:line =~ l:jsDocregex
    let l:flag = 1
    let l:regex = l:jsDocregex
  elseif l:line =~ l:jsDocregex2
    let l:flag = 1
    let l:regex = l:jsDocregex2
  else
    let l:flag = 0
  endif

  let l:lines = []
  let l:desc = ''
  if g:jsdoc_input_description == 1
    let l:desc = input('Description: ')
  endif
  call add(l:lines, l:space. '/**')
  call add(l:lines, l:space . ' * ' . l:desc)
  call add(l:lines, l:space . ' *')
  let l:funcName = ''
  if l:flag
    let l:funcName = substitute(l:line, l:regex, '\1', "g")
    let l:arg = substitute(l:line, l:regex, '\2', "g")
    let l:args = split(l:arg, '\s*,\s*')

    if g:jsdoc_additional_descriptions == 1
      call add(l:lines, l:space . ' * @name ' . l:funcName)
      call add(l:lines, l:space . ' * @function')
    endif

    for l:arg in l:args
      if g:jsdoc_allow_input_prompt == 1
        let l:argType = input('Argument "' . l:arg . '" type: ')
        let l:argDescription = input('Argument "' . l:arg . '" description: ')
        " Prepend space to start of description only if it was provided
        if l:argDescription != ''
          let l:argDescription = ' ' . l:argDescription
        endif
        call add(l:lines, l:space . ' * @param {' . l:argType . '} ' . l:arg . l:argDescription)
      else
        call add(l:lines, l:space . ' * @param ' . l:arg)
      endif
    endfor
  endif
  if g:jsdoc_return == 1
    if g:jsdoc_allow_input_prompt == 1
      let l:returnType = input('Return type (blank for no @return): ')
      let l:returnDescription = ''
      if l:returnType != ''
        if g:jsdoc_return_description == 1
          let l:returnDescription = input('Return description: ')
        endif
        if l:returnDescription != ''
          let l:returnDescription = ' ' . l:returnDescription
        endif
        call add(l:lines, l:space . ' * @return {' . l:returnType . '}' . l:returnDescription)
      else
        call add(l:lines, l:space . ' * @return {undefined}')
      endif
    else
      call add(l:lines, l:space . ' * @return {undefined}')
    endif
  endif
  call add(l:lines, l:space . ' */')

  let l:paste = &g:paste
  let &g:paste = 1

  call append(line('.') - 1, l:lines)

  let l:pos = line('.') - (len(l:lines) - 1)

  silent! execute 'normal! ' . l:pos . 'G$'
  if l:desc == '' && l:funcName != ''
    silent! execute 'normal! a' . l:funcName
  endif

  let &g:paste = paste
endfunction
 
" JSDocのキーバインド
nmap ,d :<C-u>call AddJSDoc()<CR>
" source: https://gist.github.com/sunvisor/3903772#file-jsdoc-vim


" NOTE: keep at bottom of file:
" reload your .vimrc file without restarting vim
" Only if you're editing it
":so %
" Else if not editing this file directly
":so $MYGVIMRC
