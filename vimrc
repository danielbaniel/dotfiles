set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" VUNDLES
"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-rake.git'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-abolish'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'majutsushi/tagbar'
Plugin 'matchit.zip'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
"Plugin 'bling/vim-airline'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'milkypostman/vim-togglelist.git'
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

syntax on
set background=dark
set number
set noshowmode

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab

set encoding=utf-8

set nobackup
set noswapfile

set laststatus=2

let mapleader = ","

nmap <S-tab> :set hls!<cr>:set hls?<cr>
nmap <silent> <leader>n :NERDTreeToggle<CR>
nmap <silent> <leader>N :NERDTreeFind<CR>
nmap <leader>cd :cd %:p:h<CR>:pwd<CR>
nmap <leader>t :TagbarToggle<CR>
nmap <leader>g :GitGutterToggle<CR>

set backspace=indent,eol,start
set autoindent
set smarttab
set shiftround
set showcmd
set ttimeout
set ttimeoutlen=50

set history=1000
set undolevels=1000

set incsearch

set autoread
set showmatch

set pastetoggle=<leader>p

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

cmap w!! w !sudo tee % >/dev/null

nmap <silent> <leader>/ :set hls!<cr>
nmap <silent> <leader>r :redraw!<cr>

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

set cursorline

set undofile            " Save undo's after file closes
set undodir=~/.vim/undo " where to save undo histories
set undolevels=1000     " How many undos
set undoreload=10000    " number of lines to save for undo

set clipboard=unnamed

autocmd FileType java setlocal shiftwidth=4 tabstop=4 softtabstop=4

colorscheme molokai

let g:Powerline_symbols = 'fancy'

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
