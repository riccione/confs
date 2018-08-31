" vim conf file

call plug#begin('~/.vim/plugs')
" Initialize plugin system
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
