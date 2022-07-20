" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____| 

" Author: @alonescar

let mapleader = ' '

" ===
" === Basic configuration
" ===
syntax on
filetype indent on
set nocompatible
set showmode
set showcmd
"set mouse=a
set t_Co=256
set wildmenu
set nobackup
set autochdir
set noerrorbells
set history=1000
set autoread
set noswapfile

if has("wsl")
	augroup Yank
	autocmd!
	autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
	augroup END
end

" ===
" === Indent configuration
" ===
set autoindent
set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=4

" ===
" === Appearance settings
" ===
set number
set cursorline
set nowrap
set linebreak
set wrapmargin=2
set laststatus=2
set ruler

" ===
" === Search configuration
" ===
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" ===
" === ShortCutKey configuration
" ===
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
noremap <leader>r :source $MYVIMRC<CR>

noremap J 5j
noremap K 5k
noremap H ^
noremap L $

noremap <space>h <c-w>h
noremap <space>j <c-w>j
noremap <space>k <c-w>k
noremap <space>l <c-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize -5<CR>
map <right> :vertical resize +5<CR>
