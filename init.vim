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
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()


let g:deoplete#enable_at_startup = 1

" enable prettier on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

" remove banner from file explorer
let g:netrw_banner = 0

" set style for file explorer
let g:netrw_liststyle = 3

" SETUP FOR LSP 
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ }
set signcolumn=yes

nnorema <F5> :call LanguageClient_contextMenu()<CR>
" END SETUP FOR LSP
nnoremap <c-p> :FZF<cr>
nnoremap <c-s-f> :Rg<cr>
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"ASDFASDFASFD
