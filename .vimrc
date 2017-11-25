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
Plug 'tpope/vim-projectionist'
Plug 'ternjs/tern_for_vim', { 'do': 'cd ~/.vim/plugged/tern_for_vim && npm install' }
if !has('nvim')
  Plug 'Shougo/neocomplete.vim', { 'do': 'sudo apt-get install vim-nox' } 
else
  Plug 'roxma/nvim-completion-manager'
  Plug 'vimlab/split-term.vim'
endif
Plug 'liuchengxu/space-vim-dark'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'mxw/vim-jsx'
Plug 'ruanyl/vim-fixmyjs'
Plug 'SirVer/ultisnips'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
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
set foldmethod=syntax

" Searching
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>

" Leader
let mapleader=","

" Colors & themes
"let g:airline_theme='luna'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

" Encoding
set encoding=utf-8
set fileencodings=utf-8

" Mouse Support
set mouse=a

" Backup files
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Persistent undo
silent !mkdir -vp ~/.backup/undo/ > /dev/null 2>&1
set undofile
set undodir=~/.backup/undo/,~/tmp,.

" Indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Use italics for comments
" http://stackoverflow.com/a/21077380
set t_ZH=[3m
set t_ZR=[23m
highlight Comment cterm=italic

" Misc
set backspace=indent,eol,start " ensure backspace is working in insert mode

" Enable neocomplete on startup
let g:neocomplete#enable_at_startup = 1

" NerdTree
if exists(':NERDTreeShowHidden')
  "autocmd vimenter * NERDTree " open a NERDTree automatically when vim starts up
  let NERDTreeShowHidden=1 " show hidden files on NERDTree
endif

" vim-gitgutter
set updatetime=250 " Check file changes every 250ms

" nerdcommenter
if exists(':NERDSpaceDelims')
  map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>
endif

" nerdcommenter: Add spaces after comment delimiters by default
let NERDSpaceDelims = 1

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

set t_Co=256

" disable Yggdroot/indentLine conceal on json files
let g:indentLine_setConceal = 0

" Fix vim-multiple-cursors issue when editing rjx
" https://github.com/spf13/spf13-vim/issues/1023
" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

" vim jsx
let g:jsx_ext_required = 0 " Apply jsx indention / highlighting on js & jsx files

let g:fixmyjs_rc_filename = ['.eslintrc', '.eslintrc.json']

" roxma/nvim-completion-manager
" Use <TAB> to select the popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"<Paste>
