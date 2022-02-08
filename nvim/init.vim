" Diego's nvimrc file :)

" Switching things off
set noerrorbells
set nowrap
set nohlsearch
set noswapfile
set nobackup

" Switching things on
syntax on
set smartcase
set incsearch
set confirm
set undodir=~/.config/nvim/undodir
set undofile

" Tabstuff
set tabstop=2
set softtabstop=2              " Tab size
set shiftwidth=2
set expandtab                  " Tabs with spaces (expand to spaces)
set smartindent
set autoindent
set backspace=indent,eol,start

" Visual stuff
set clipboard=unnamedplus " Yank to system clipboard
set scrolloff=5           " leave 5 lines at the bottom alwayays
set relativenumber
set nu
set termguicolors
set signcolumn=yes        " Show column at the left
set colorcolumn=80
highlight ColorColumn ctermbg=gray guibg=grey
if has("mouse")
    set mouse=a
endif

" Plugin manager
call plug#begin('~/.vim/plugged')
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'morhetz/gruvbox'
  Plug 'neovim/nvim-lspconfig'
  Plug 'kyazdani42/nvim-web-devicons' " for file icons
  Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

set background=dark
colorscheme gruvbox

" REMAPS:
" mode lhs rhs
" mode what_you_do what_computer_does

" Modes
"   n - (normal mode)
"   i - (insert mode)
"   v - (visual mode)
"   nore (no recursive)
"   map (key mapping)
" e.g.: nnoremap = normal mode no recursive key mapping

let mapleader=" "

" Telescope
nnoremap <leader>t  <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>

" Put things at the border of selection
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>

" Move line up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> :m .+1<CR>==
inoremap <C-k> :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
