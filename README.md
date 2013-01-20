nanAdair's vim files
====================
## Plugins description ##

1. [c.vim](https://github.com/vim-scripts/c.vim): c/c++ IDE
2. [neocomplcache](https://github.com/Shougo/neocomplcache): Ultimate auto-completion system
3. [nerdcommenter](https://github.com/scrooloose/nerdcommenter): for intensely orgasmic commenting
4. [nerdtree](https://github.com/scrooloose/nerdtree): tree explorer plugin for navigation the filesystem
5. [rainbow](https://github.com/kien/rainbow_parentheses.vim): highlights matching parenthesis with a rainbow of colors
6. [supertab](https://github.com/ervandew/supertab): perform all your vim insert mode completions with tab 
7. [tagbar](https://github.com/majutsushi/tagbar): display tags in a window, ordered by class etc
8. [simple-pairs](https://github.com/vim-scripts/simple-pairs): a quick way for
   typing parenthesis
9. [python-mode](https://github.com/klen/python-mode): many python plugins in
   one collection
10. [vim-markdown](https://github.com/tpope/vim-markdown): markdown syntax highlight
11. [syntastic](https://github.com/scrooloose/syntastic): syntax checking

## Aesthetics ##

* [tomorrow](https://github.com/ChrisKempson/Tomorrow-Theme/tree/master/Vim)

## Installation ##

Backup your own vim files:  

    mv .vim .vim.bk
    mv .vimrc .vimrc.vk

Clone this repo:  

    git clone git@github.com:nanAdair/vimfile.git
    mv vimfile .vim

Create link for .vimrc  

    ln -s .vim/vimrc .vimrc
    
Update the submodules  
    
    cd .vim
    git submodule init && git submodule update
