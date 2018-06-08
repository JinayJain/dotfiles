call plug#begin('~/.vim/bundle')

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

"Plug 'chriskempson/base16-vim'
Plug 'dylanaraps/wal.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'easymotion/vim-easymotion'

Plug 'takac/vim-hardtime'

call plug#end()

" Editor Values

let base16colorspace=256
colorscheme wal
syntax on

set rnu
set number
set splitright
set splitbelow

set tabstop=4
set shiftwidth=4
set expandtab


let mapleader=" "

" Keybinds
inoremap kj <Esc>
noremap <leader>rr :sp %:t:r.tmp<CR>:terminal! runcpp %:t:r < %:t:r.in<CR>
map <leader>w <Plug>(easymotion-bd-w)
map <leader>l <Plug>(easymotion-bd-jk)

" Plugin Values

" Vim HardTime
let g:hardtime_default_on = 1

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
