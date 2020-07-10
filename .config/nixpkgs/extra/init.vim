let mapleader = " "
let maplocalleader = "\\"

colorscheme jellybeans

set clipboard=unnamed
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set number " Line numbers
set noswapfile " Disable swap files
set hidden " Hide files in the background instead of closing 'em
set ignorecase " Case insensitive search
set smartcase " If first letter is Capital, then noignore
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=black
set cmdheight=2 " More space for displaying messages
set updatetime=300 " Default is 4000
set shortmess+=c " Don't give ins-completion-menu messages
set termguicolors

" Vim hardmode, don't use arrows!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Edit all the things
nnoremap <Leader>, :tabedit $HOME/.config/nixpkgs<CR>

let g:airline_theme='jellybeans'
let g:airline_powerline_fonts=1

" nvim-colorizer
" lua require'colorizer'.setup()

