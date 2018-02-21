" Keymaps
if exists(':CtrlP')
  map <Leader>, :CtrlP<CR>
endif

if exists(':YRShow')
  map <Leader>y :YRShow<CR>
endif

map <C-p> :NERDTreeToggle<CR>

" nerdcommenter
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" This method uses a command line abbreviation so %% expands to the full path
" of the directory that contains the current file.
cabbr <expr> %% expand('%:p:h')
" this method allows you to type <Leader>e to
" enter :e /some/path/ on the command line 
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>

" sneak.vim
map s <Plug>Sneak_s

" colorscheme
colorscheme space-vim-dark
hi Comment cterm=italic
