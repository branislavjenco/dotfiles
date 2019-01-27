syntax on
filetype plugin indent on
set hidden " doesnt require to save a buffer before opening a new one
set number " show line numbers
set history=1000 " increase history size
set tabstop=2 " set tab size to 2
set shiftwidth=2 " same
set expandtab 
set scrolloff=10 " line margin while scrolling
set ignorecase " better searching in file
set smartcase " same
set visualbell " instead of audio bell
set mouse=a " enable mouse in vim
let mapleader = "\<Space>" " remap the leader key from \ to Space
set background=dark " more readable colors with dark background
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp " custom dir for swaps and backups
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp " same
set title

" plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'w0rp/ale'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()
let g:deoplete#enable_at_startup = 1

nnoremap <c-p> :FZF<cr>
nnoremap <c-s-f> :Rg<cr>
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

