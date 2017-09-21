set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rust-lang/rust.vim'

" All of your Vundle Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on

syntax on
set ruler " sets up status bar
set laststatus=2 " Always keeps the status bar active
set showcmd             " display incomplete commands
set backspace=indent,eol,start
set history=500
set number " turn on line numbering
set relativenumber " turn on relative line numbering
                   " ie. shows what to use with multi-line movements
set t_Co=256 "Sets Vim to use 256 colors
set hlsearch " highlights search terms
set showmatch " highlights matching parentheses
set ignorecase "ignores case when searching
set smartcase "unless you used caps in the search term

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"disable arrow keys in command mode
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>
no <down> <Nop>

"disable arrow keys in insert mode
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

let g:rustfmt_autosave = 1

" scroll wheel moves through time instead of space
" <https://xkcd.com/1806/>
set mouse=a
nnoremap <ScrollWheelUp> u
nnoremap <ScrollWheelDown> <C-r>
inoremap <ScrollWheelUp> <Esc>ui
inoremap <ScrollWheelDown> <Esc><C-r>i
