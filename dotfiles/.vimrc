" Execute this before you do BundleInstall
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized' " Solarized theme
"Plugin 'tomasr/molokai' " molokai theme
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree.git' " Directory Explorer plugin 
Plugin 'scrooloose/syntastic' " Syntax Highlighting for many languages, need to pip install flake8
Plugin 'vim-airline/vim-airline' " Syntax Highlighting for many languages, need to pip install flake8
Plugin 'raimondi/delimitMate' " Auto Insert matching quotes, brackets etc,
Plugin 'kien/ctrlp.vim'       " CTRLp plugin 
Plugin 'davidhalter/jedi-vim' "Python autocomplete plugin for vim, need to pip install jedi

call vundle#end()            " required

filetype plugin indent on 
syntax on
set number " show line numbers
set spell spelllang=en_us
set wrap
set linebreak
"set cursorline "show cursor line for ease" 

"<TAB> related stuff
set ts=4 " shows tabs as 4 spaces
set softtabstop=4 " Inserts 4 spaces for TAB when editing 
set expandtab "expand tabs into spaces to avoid problems with python"
set autoindent " set auto indentation"

"status bar settings
set showmatch "show matching () {} etc.,"
set laststatus=2 " show the file name at the status bar
set showcmd " show last command used"

let python_highlight_all=1 
" syntax on

set wildmenu "Visual autocomplete for command menu"

"Searching 

set incsearch "search as characters are entered "
"set hlsearch "Highlight the search"

" map ESC key to jk 
inoremap jk <ESC>
let mapleader = "\<Space>"

" Theme 
if has("gui_running")
    set guifont=Meslo\ LG\ L\ DZ\ for\ powerline\ 12
    syntax enable
    set background=dark
    colorscheme solarized
else
   let g:solarized_termtrans=1
endif

" Airline theme
let g:airline_powerline_fonts = 1
" powerline font installation
" git clone https://www.github.com/powerline/fonts.git
" cd fonts
" ./install.sh

" Dont forget to remap CAPSLOCK with CTRL
set encoding=utf-8

" Splits Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Where to split
set splitbelow
set splitright

"NERDTree Toggle
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Stop Using arrow keys for efficiency 
nnoremap <Left> :echo "Use h"<CR>
nnoremap <Right> :echo "Use l"<CR>
nnoremap <Up> :echo "Use k"<CR>
nnoremap <Down> :echo "Use j"<CR>
inoremap <Down> <nop>
inoremap <up> <nop>
inoremap <right> <nop>
inoremap <left> <nop>

"Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

augroup reload_vimrc " {
        autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
