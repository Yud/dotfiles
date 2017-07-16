" Syntactic Setup
if !empty(glob("~/.vim/plugged/syntastic"))
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_always_populate_loc_list = 0
  let g:syntastic_auto_loc_list = 0
  let g:syntastic_check_on_open = 0
  let g:syntastic_check_on_wq = 0
  let g:syntastic_javascript_checkers = ['eslint']

  highlight Error ctermfg=208 guifg=#D881ED
  highlight SyntasticError ctermfg=208 guifg=#D881ED
  highlight SyntasticErrorSign ctermfg=208 guifg=#D881ED
  highlight SyntasticStyleErrorSign ctermfg=208 guifg=#D881ED
endif

