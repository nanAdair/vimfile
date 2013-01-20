" Loading pathogen to manage the plugins
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
syntax on

" Don`t be comatible with vi
set nocompatible

" Proventing some securtiy exploits may come with modelines
set modelines=0

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Options to make things better
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number

" Show the rative number related to the current line
" set relativenumber

" Active undo file even after modifying it
set undofile

" Deal with case-sensitive search
set ignorecase
set smartcase

" Highlight search results
set incsearch
set showmatch
set hlsearch

" Change <leader> key
let mapleader = ","

" Clear out a search
nnoremap <leader><space> :noh<cr>

" Make tab to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Handle long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Quick Escape
inoremap jj <ESC>

" Quick split
nnoremap <leader>w <C-w>v<C-w>l

" Quick change between your splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Nerd Tree
let NERDChristmasTree=1
let NERDTreeWinSize=25
nmap <F4> :NERDTreeToggle<cr>

" NedComplCache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length=3
let g:neocomplcache_lock_buffer_name_pattern='\*ku\*'
autocmd Syntax html let g:neocomplcache_disable_auto_complete=1
set completeopt-=preview

" SuperTab
let g:SuperTabDefaultCompletionType="<c-n>"

" Tagbar
let g:tagbar_left=0
let g:tagbar_width=30
nmap <F5> :TagbarToggle<cr>

" Color settins
set t_Co=256
color Tomorrow-Night-Bright
set cursorline
set background=dark
