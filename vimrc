syntax on " enable syntax highlighting
set background=dark
colorscheme gruvbox 

set nocompatible " vim mode only; go beyond vi
set number " show line numbers
filetype plugin indent on
set title
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set showmatch
set copyindent " copy indentation structure of existing code
set autoread   " enable reloading file on external changes
set hidden     " enable changing buffer without saving
set encoding=utf-8
set cursorline " highlight current line

set ignorecase " ignore case when searching
set smartcase  " try to be smart about cases when searching

set incsearch  " enable incremental search

" display options
set showmode
set showcmd
set cmdheight=1

" Fixes common backspace problems
set backspace=indent,eol,start

" To enable C-s and C-q
silent !stty -ixon
autocmd VimLeave * : silent !stty -ixon

map <C-s> :w <CR>
" map <S-q> :q <CR>
map <C-q> :qa! <CR>
map <C-x> :bd! <CR>


" For terminal within vim
" map <S-t> :term <CR>
" tnoremap <ESC><ESC> <C-\><C-N> " Move out from terminal


" Termdebug
packadd termdebug
map <C-g> :Termdebug <CR>


" NERDTree
set runtimepath^=~/.vim/bundle/nerdtree/
helptags ~/.vim/bundle/nerdtree/doc/  " :help Nerdtree/NERDTree
map <C-t> :NERDTreeToggle <CR>


" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim/
helptags ~/.vim/bundle/ctrlp.vim/doc/  " :help ctrlp


" Auto Pairs
set runtimepath^=~/.vim/bundle/auto-pairs/
helptags ~/.vim/bundle/auto-pairs/doc/  " :help autopairs


" Switching across buffers
map <S-n> :bnext <CR>
map <S-p> :bprev <CR>


" airline
set runtimepath^=~/.vim/bundle/vim-airline/
helptags ~/.vim/bundle/vim-airline/doc/  " :help airline
let g:airline_powerline_fonts = 1  " requires powerline fonts to be installed
let g:airline#extensions#tabline#enabled = 1 " enable tabline
let g:airline#extensions#tabline#formatter = 'unique_tail'


" airline-themes
set runtimepath^=~/.vim/bundle/vim-airline-themes/
helptags ~/.vim/bundle/vim-airline-themes/doc/  " help airline-theme/s
let g:airline_theme='base16_gruvbox_dark_hard'


" fugitive
set runtimepath^=~/.vim/bundle/vim-fugitive/
helptags ~/.vim/bundle/vim-fugitive/doc/  " help fugitive 
