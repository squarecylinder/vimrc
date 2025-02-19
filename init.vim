set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set guifont=FiraCodeRetina:h100
set wrap
set linebreak

call plug#begin(stdpath('data') . '/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-editors/vim-elixir'
call plug#end()

set termguicolors
colorscheme dracula

let mapleader = " "

nnoremap <leader>pv :Vex<CR>
if has('win64')
    nnoremap <leader><CR> :so ~/AppData/Local/nvim/init.vim<CR>
else
    nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
endif
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <C-e> :copen<CR>
nnoremap <A-Down> :m+<CR>==
nnoremap <A-Up> :m-2<CR>==

inoremap <A-Down> <Esc>:m+<CR>==gi
inoremap <A-Up> <Esc>:m-2<CR>==gi
inoremap <expr> <C-space> coc#pum#visible() ? coc#_select_confirm() : coc#refresh() 
inoremap <expr> <S-tab> coc#pum#visible() ? coc#_select_confirm() : coc#refresh() 
vnoremap <A-Down> :m'>+<CR>gv=gv
vnoremap <A-Up> :m-2<CR>gv=gv
