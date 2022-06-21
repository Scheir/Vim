set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" STANDARD SETTINGS
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible
set autoindent
set smartindent
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
set textwidth=120
set t_Co=256
"let python_highlight_all=1
syntax on
set number
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
set hlsearch


" Remaps STANDARD
inoremap ii <esc>
nnoremap qq :!python3 %
:vmap // :s:^://<cr>    
set backspace=indent,eol,start


" NERDTree Settings
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Cursor
let &t_SI = "\e[4 q"
let &t_EI = "\e[2 q"

" Terminal settings
set splitbelow
set termwinsize=10x0
