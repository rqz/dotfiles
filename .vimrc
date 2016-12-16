"disable old vi 
set nocompatible

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'valloric/youcompleteme'
Plug 'scrooloose/nerdtree'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'sjl/badwolf'

call plug#end()

"vim-markdown options
"let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_frontmatter = 1

"load flietype-specific indent file and turn on filetype detection
filetype indent on

"TABS & SPACES
set expandtab       "use spaces instead of tabs
set textwidth=120
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

"make backspaces more powerfull
set backspace=indent,eol,start

"visual autocomplete for command menu
set wildmenu

"redraw only when needed
set lazyredraw

"highlight matching [{()}]
set showmatch

"SEARCH FUNCTION
set incsearch
set hlsearch

set ruler
set number
syntax on
set showcmd

colorscheme badwolf

"binds Esc to fj 
:imap fj <Esc> 
