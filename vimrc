set nocompatible              " be iMproved, required
filetype off                  " required

" Use Vundle to manage plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
source ~/.vim/plugins.vim

call vundle#end()            " required
filetype plugin indent on    " required

" Proventing some securtiy exploits may come with modelines
set modelines=0

" make clipboard the system one
set clipboard=unnamed

" Set cursor
set cursorline
set cursorcolumn

" Enable syntax highlight
syntax on

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
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number

" Active undo file even after modifying it
set undofile

" Deal with case-sensitive search
set ignorecase
set smartcase

" Highlight search results
set incsearch
set showmatch
set hlsearch

" window setting
if has('gui_running')
    set guioptions-=L
    set guioptions+=r
endif

" Change <leader> key
let mapleader = ","

" Clear out a search
nnoremap <leader><space> :noh<cr>

" Make tab to match bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Handle long lines
set wrap
set textwidth=85
set formatoptions=qrn1
set colorcolumn=100
" handle the long lines problem with unicode
set formatoptions+=mM

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
set background=dark

" F2 become a toggle for number display
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Rainbow Parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Python-mode Settings"

"Syntax highlight"

" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" Enable all python highlightings
let g:pymode_syntax_all = 1

" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0

" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all

" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all

" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" For fast machines
let g:pymode_syntax_slow_sync = 0

" ctags settings
set tags=tags;
set autochdir

" Make syntastic support c++11
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 '

" Powerline setting
"let g:Powerline_symbols = 'fancy'
"set laststatus=2
"set noshowmode
"set t_Co=256

"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Inconsolata\ for\ Powerline:h15
    endif
endif

"set fold
set foldmethod=indent
