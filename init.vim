call plug#begin('~/.vim/plugged')

" Syntax & Highlighting
Plug 'sheerun/vim-polyglot'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File Tree
Plug 'preservim/nerdtree'

" Icons
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Basic Settings
set number
set mouse=a
syntax on
set tabstop=4
set shiftwidth=4
set expandtab

" Color theme (optional)
colorscheme default
" Use space as leader key (optional)
let mapleader="\<Space>"

" Run current file based on filetype
autocmd FileType python nnoremap <leader>r :!python3 %<CR>
autocmd FileType javascript nnoremap <leader>r :!node %<CR>
autocmd FileType c nnoremap <leader>r :!gcc % -o out && ./out<CR>
autocmd FileType cpp nnoremap <leader>r :!g++ % -o out && ./out<CR>
autocmd FileType java nnoremap <leader>r :!javac % && java %:r<CR>

