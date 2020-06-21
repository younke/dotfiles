let mapleader = "\<Space>"

set number " Line numbers
set noswapfile " Disable swap files
set hidden " Hide files in the background instead of closing 'em

" Vim hardmode, don't use arrows!
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Edit nvimrc
nnoremap <Leader>, :tabedit $MYVIMRC<CR>

