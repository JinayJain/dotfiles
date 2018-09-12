call plug#begin('~/.vim/bundle')

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'vim-latex/vim-latex'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

"Plug 'chriskempson/base16-vim'
Plug 'dylanaraps/wal.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'easymotion/vim-easymotion'

call plug#end()

" Editor Values

let mapleader=" "

filetype plugin on
syntax on

set rnu
set number
set splitright
set splitbelow

set tabstop=4
set shiftwidth=4
set expandtab

set incsearch

let base16colorspace=256
colorscheme wal


" Keybinds

" Exit insert mode with kj
inoremap kj <Esc>
" Move around easymotion lines with <leader>l
map <leader>l <Plug>(easymotion-bd-jk)

" C/C++ commenting options
au FileType c,cpp setlocal comments-=:// comments+=f://

" Running/Compiling with <leader>rr
autocmd FileType cpp noremap <leader>rr :sp %:t:r.tmp<CR>:terminal! runcpp %:t:r < %:t:r.in<CR>
autocmd FileType python noremap <leader>rr :sp %:t:r.tmp<CR>:terminal! python %:t:r.py<CR>
autocmd FileType rmd noremap <leader>rr :!Rscript -e "rmarkdown::render('%:t', clean=TRUE)"<CR>

" Open the PDF associated with the file

autocmd FileType rmd,md,plaintex,tex noremap <leader>p :!mupdf %:t:r.pdf &<CR><CR>

" Plugin Values

" Vim Markdown 

let g:vim_markdown_folding_disabled = 1

" CtrlP
let g:ctrlp_working_path_mode='c'

" Comfortable Motion
let g:comfortable_motion_friction = 200.0
let g:comfortable_motion_air_drag = 0.0

" Autocomplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 1
let g:deoplete#num_processes = 1


let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'

" Linting
let g:ale_linters = {
            \   'cpp':['g++', 'clang']
            \}
let g:ale_cpp_gcc_options = '-std=c++11 -Wall'
let g:ale_cpp_clang_options = '-std=c++11 -Wall'

" Snippets
" Add a search directory for custom snippets
set runtimepath +=~/.vim/
let UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]
