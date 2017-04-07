" Keymaps
map <Leader>, :CtrlP<CR>
map <Leader>y :YRShow<CR>
map <C-p> :NERDTreeToggle<CR>

" This method uses a command line abbreviation so %% expands to the full path
" of the directory that contains the current file.
cabbr <expr> %% expand('%:p:h')
" this method allows you to type <Leader>e to
" enter :e /some/path/ on the command line 
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>
