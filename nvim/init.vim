set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

:syntax on

set t_kb=
set nocompatible
set backspace=eol,indent,start
set autoindent
set smartindent

" don't highlight the last search upon startup
set viminfo="h"

" Do C-style auto indentation on C/C++/Perl files only :)
:filetype on
:autocmd FileType c,cpp,perl :set cindent

autocmd BufWritePre * %s/\s\+$//e

" stop Vim from beeping all the time
set vb

set tabstop=3
set shiftwidth=3
set softtabstop=3
set smarttab

set expandtab
set ruler
set background=dark

"Tell you if you are in insert mode
set showmode

"match parenthesis, i.e. ) with (  and } with {
set showmatch

"ignore case when doing searches
set ignorecase
set smartcase

"tell you how many lines have been changed
set report=0

set scrolloff=5
set wildmode=longest,list
set incsearch
set hlsearch

:colorscheme elflord

set showtabline=2
set relativenumber
set number

imap jj <Esc>

" move between vim panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" move between tabs
nnoremap <C-y> gT
nnoremap <C-i> gt


" find in file
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" time
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>

"" nerd tree kinda
let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_browse_split = 4
let g:netrw_altv =1
let g:netrw_winsize = 25

let @c = "Ypk0f a
let @w = "069lbi
let @r = ":s/.*/\\\=printf(\"%-68s*\",submatch(0))
let @f = "O\\begin{figure}[ht!]

map  :ALEDetail
" walk into the world
map  :Vexplore