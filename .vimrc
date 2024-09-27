call plug#begin('~/.vim/plugged')

" ALE settings
let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'c': ['gcc'],
\   'cpp': ['g++'],
\   'sh': ['shellcheck'],
\}
let g:ale_fixers = {
\   'python': ['autopep8'],
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'sh': ['shfmt'],
\}
let g:ale_fix_on_save = 1

" Jedi settings
let g:jedi#completions_enabled = 1
let g:jedi#auto_vim_configuration = 0

" General settings
syntax on
set background=dark

set number
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set wildmenu
set clipboard=unnamedplus

" Plugins
Plug 'dense-analysis/ale'
Plug 'davidhalter/jedi-vim'
Plug 'tmhedberg/SimpylFold'

Plug 'vim-syntastic/syntastic'
Plug 'ycm-core/YouCompleteMe'

Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

" Shell scripting support
Plug 'vim-scripts/bash-support.vim'   " Enhanced Bash scripting support
Plug 'vim-syntastic/syntastic'        " Syntastic syntax checking for various languages, including shell
Plug 'tmhedberg/SimpylFold'           " Automatic code folding for shell scripts

call plug#end()
