let mapleader = "\<Space>"

colorscheme "gruvbox"

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

" Edit configs
" [,] cause open preferences
" Edit nvimrc, [v]im
nnoremap <Leader>,v :tabedit $MYVIMRC<CR>
" Edit alacritty.yml [a]lacritty
nnoremap <Leader>,a :tabedit $HOME/.config/alacritty/alacritty.yml<CR>
" Edit [bash] profile
nnoremap <Leader>,b :tabedit $HOME/.bash_profile<CR>
" Edit [nix] home
nnoremap <Leader>,n :tabedit $HOME/.config/nixpkgs/home.nix<CR>

