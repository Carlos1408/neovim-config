syntax on
set number
set sw=4
set expandtab
set smartindent
set rnu
set numberwidth=1
set nowrap
set noswapfile
set nobackup
set incsearch
set ignorecase
set clipboard=unnamed
set encoding=utf-8
set showmatch
set cursorline
set termguicolors

call plug#begin('~/.local/share/nvim/plugged')


Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim'

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-python/python-syntax'

Plug 'jiangmiao/auto-pairs'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mattn/emmet-vim'

call plug#end()

let mapleader = " "

"Theme
"set background=dark
"colorscheme onedark
"let g:lightLine = { 'colorscheme' : 'palenight' }
"let g:airline_theme = "palenight"
colorscheme dracula
"colorschema_bg = "dark"

nmap <F5> :source ~/.config/nvim/init.vim<CR>
vmap <F5> :source ~/.config/nvim/init.vim<CR>

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

nnoremap <leader>w :w<CR>
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

"Terminal
"vnoremap <c-t> :split<CR>:ter<CR>
"nnoremap <c-t> :split<CR>:ter<CR>

"Movimiento entre ventanas
vnoremap <tab> <C-w>
nnoremap <tab> <C-w>

"Siguiente buffer
nnoremap <leader>k :bnext<CR>

"Anterior buffer
nnoremap <leader>j :bprevious<CR>

"Cerrar buffer
nnoremap <leader>q :bdelete<CR>

"Nueva ventana
nnoremap <leader>t :tabe<CR>

"split vertical
nnoremap <leader>vs :vsp<CR>

"split horizontal
nnoremap <leader>sp :sp<CR>

"Accesos a nerdtree
nnoremap <leader>n : NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Iniciar nerdtree al abrir vim
autocmd VimEnter * NERDTree | wincmd p

"Configuracion airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#formatter = 'jsformatter'

"Airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme = 'deus'

"Python syntax
let g:python_highlight_all = 1

"Coc config
source ~/.config/nvim/plug-config/coc.vim
