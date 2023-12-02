set background=dark
colorscheme solarized
let g:solarized_termcolors=256
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set background=dark
set nocompatible
set relativenumber
set cursorline
"set cursorcolumn
set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
set expandtab
set nobackup
set scrolloff=10
set nowrap
set showcmd
set showmode
set history=100
set encoding=utf-8
set noswapfile
set incsearch
set guicursor=
" enable folding
set foldmethod=syntax

" https://vi.stackexchange.com/questions/356/how-can-i-set-up-a-ruler-at-a-specific-column
" https://stackoverflow.com/questions/1272173/in-vim-how-do-i-break-one-really-long-line-into-multiple-lines
set colorcolumn=80
set tw=80
set fo+=t

" automatic closing brackets
" https://stackoverflow.com/questions/21316727/automatic-closing-brackets-for-vim
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" show full path to the file and show status always
" https://unix.stackexchange.com/questions/111558/how-can-i-constantly-see-the-current-filename-in-vim
set laststatus=2
set statusline+=%F

" autosave
" https://stackoverflow.com/questions/6991638/how-to-auto-save-a-file-every-1-second-in-vim/27387138#27387138
autocmd TextChanged,TextChangedI * silent write

" for YAML files
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

call plug#begin()

" for YAML
Plug 'https://github.com/Yggdroot/indentLine'

" for CSV
Plug 'https://github.com/mechatroner/rainbow_csv'

" for Rust
Plug 'rust-lang/rust.vim'

" for statusline
Plug 'itchyny/lightline.vim'

call plug#end()
