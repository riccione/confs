" vim conf file

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

" Disable the directional keys - enable only if you want to use hjkl
"map <up> <nop>
"map <down> <nop>
"map <left> <nop>
"map <right> <nop>
"imap <up> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

" Press the j 2 times in row to return to the normal mode
:imap jj <Esc>

" Run python with F9
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%,1)<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugin manager
Plugin 'gmarik/Vundle.vim'

" add plugins below
" 
" ...
"

call vundle#end()
filetype plugin indent on
