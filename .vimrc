"disable old vi 
set nocompatible
set encoding=utf-8

"split configuration
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'sjl/badwolf'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'

call plug#end()

"ignore files in nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$']

"enable suntax and PEP8
let python_highlight_all=1
syntax on

"enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

"youcompleteme option
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"vim-markdown options
"let g:vim_markdown_folding_disabled = 1
"let g:vim_markdown_frontmatter = 1

"load flietype-specific indent file and turn on filetype detection
filetype indent on

"TABS & SPACES for python files
au BufNewFile,BufRead *.py
    \ set expandtab       "use spaces instead of tabs
    \ set textwidth=79
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set autoindent
    \ set fileformat=unix

"show bad whitespaces
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

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
