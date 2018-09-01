" vim conf file

" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugs')
" Initialize plugin system
Plug 'https://github.com/sjbach/lusty.git'
call plug#end()

"General rules
colorscheme badwolf	" set color scheme
set antialias

set title	        " show title

syntax enable       " enable syntax processing
filetype on
filetype plugin on
filetype indent on

set tabstop=4
set wrap            " wrap lines if they are too long
set ruler	        " display cursor position
set number	        " display line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set showmatch       " highlight matching [{()}]
set wildmenu        " visual autocomplete for command menu
set scrolloff=3		" display 3 lines around cursor for scrolling
" Search
set ignorecase		" ignore case when searching
set smartcase		" search with case when there is any Uppercase char
set incsearch		" highlight search results when typing
set hlsearch		" highlight search results

" Beep
set visualbell		" prevent vim from beeping
set noerrorbells	" prevent vim from beeping

set hidden			" hide buffer
set backspace=indent,eol,start " Backspace behaves as expected
set guioptions=T	" enable toolbar

" Disable the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Press the j 2 times in row to return to the normal mode
:imap jj <Esc>
