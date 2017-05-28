set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'eagletmt/neco-ghc'
Plugin 'janko-m/vim-test'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'wlue/vim-dm-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on


set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source /etc/vimrc

let g:ycm_global_ycm_extra_conf = '~/code/.ycm_extra_conf.py'

map <C-K> :pyf ~/code/clang/tools/clang-format/clang-format.py
imap <C-K> <c-o>:pyf ~/code/clang/tools/clang-format/clang-format.py

set expandtab
set number
colorscheme slate

set runtimepath+=~/.config/nvim/bundles/chromatica.nvim
