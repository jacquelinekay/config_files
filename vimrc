" begin Vundle setup

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" end Vundle setup

:colorscheme koehler
:set tabstop=2
:set shiftwidth=2
:set expandtab

autocmd BufRead,BufNewFile *.launch setfiletype roslaunch

:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen

" syntax highlighting direct mappings for gazebo and ros development
au BufNewFile,BufRead *.sdf setfiletype xml
au BufNewFile,BufRead *.erb setfiletype xml
au BufNewFile,BufRead *.rsdf setfiletype xml
au BufNewFile,BufRead *.urdf setfiletype xml
au BufNewFile,BufRead *.world setfiletype xml
au BufNewFile,BufRead *.template setfiletype cpp

map <C-K> :py3file ~/.config/clang-format.py<cr>
imap <C-K> <c-o>:py3file ~/.config/clang-format.py<cr>
