" Key Mappings
" ===============
" Additional key mappings can be found at ~/.vim/after/plugin/mappings.vim
"
" External Dependencies
" =====================
" * vim-plug: https://github.com/junegunn/vim-plug
" * Silver Searcher: https://github.com/ggreer/the_silver_searcher
" * ESLint: http://eslint.org/docs/user-guide/getting-started

" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-wombat-scheme'
Plug 'sickill/vim-monokai'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-rails'
Plug 'YankRing.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-dispatch'

call plug#end()

" Spaces & Tabs
set tabstop=2
set softtabstop=2
set expandtab
syntax enable           " enable syntax processing

" UI
set number
set showcmd
set cursorline
set showmatch
filetype indent on 
set wildmenu
set lazyredraw 

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Leader
let mapleader=","

" Colors & themes
colorscheme wombat
let g:airline_theme='luna'

" Encoding
set encoding=utf-8
set fileencodings=utf-8

" Mouse Support
set mouse=a

" Misc
autocmd vimenter * NERDTree " open a NERDTree automatically when vim starts up
let NERDTreeShowHidden=1 " show hidden files on NERDTree

" Syntactic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
