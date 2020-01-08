call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'junegunn/goyo.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

" enable matchit
runtime macros/matchit.vim

source ~/.vimrc.bepo
set mouse=a


"MAPPING
"=======

" save
nnoremap ,s :w<CR>

"escape to normal mode
inoremap jl <esc>
vnoremap jl <esc>

"edit .vimrc
nnoremap ,ve :vsplit $MYVIMRC<cr> 
" source .vimrc
nnoremap ,vs :source $MYVIMRC<cr>

" remove highlighting of searches matches
nnoremap ,n :noh<cr>

" scroll up & down
noremap <BS> <C-U>
noremap <Space> <C-D>

" back to last buffer
noremap ,b :w<cr>:b#<cr>

" run python script
nnoremap ,r :!python %<CR>

"LAYOUT
"======

syntax enable

" enable italic in tmux
"set t_ZH=[3m
"set t_ZR=[23m


"set termguicolors
"set background=dark
let g:nord_italic=1
let g:nord_italic_comments=1
colorscheme nord

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

set wrap
set textwidth=80
"set linebreak
set breakindent
set colorcolumn=80

set showcmd
set wildmenu

set incsearch
set hlsearch

"ruler
set number
set relativenumber
set wrap

"scrolloff, keep lines below and above the cursor
set scrolloff=5

" STATUS LINE
" ===========

set laststatus=2        " Activate status line
hi StatusLine ctermfg=black ctermbg=blue cterm=NONE
hi StatusLineNC ctermfg=blue ctermbg=black cterm=NONE
set statusline=\ \ 
set statusline+=%f      " Path to the file
set statusline+=\ -\    " separator
set statusline+=%y      " filetype
set statusline+=\ -\    " separator
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] " file encoding
"set statusline+=%{&ff}] " file format
set statusline+=%h      " help file flag
set statusline+=%m      " modified flag
set statusline+=%r      " read only flag
set statusline+=%=      " left/right separator
set statusline+=%c      " cursor column
set statusline+=\ \|\    " separator
set statusline+=%l/%L   " cursor line/total line
set statusline+=\ \   
