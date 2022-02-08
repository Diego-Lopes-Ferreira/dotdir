" Diego's vimrc file
" let g:gruvbox_contrast_dark='hard'
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set bg=dark
set t_Co=256
syntax on

" Switching things off
set noerrorbells
set nowrap
set nohlsearch
set smartcase
set noswapfile
set nobackup

" TODO: comment here
set incsearch
set showcmd
set confirm
set undodir=~/.vim/undodir
set undofile

" Tabstuff
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set backspace=indent,eol,start

set scrolloff=5
set signcolumn=no

set relativenumber
set nu

" Enable mouse selection
if has("mouse")
    set mouse=a
endif

set colorcolumn=80
highlight ColorColumn ctermbg=gray guibg=gray

