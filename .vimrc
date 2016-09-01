execute pathogen#infect()                       

set background=light
set t_Co=256                                    " force vim to use 256 colors (tmux)
let g:solarized_termcolors=256                  " use solarized 256 fallback
colorscheme solarized                           " set colorscheme
syntax enable                                   " enable syntax highlighting

if has("gui_running")
    set guifont=Menlo\ for\ Powerline:h11       " set GUI font
    set lines=40                                " initial window line count
    set columns=125                             " initial window column count
    set guioptions-=m                           " remove menu bar
    set guioptions-=T                           " remove toolbar
    set guioptions-=r                           " remove right-hand scroll bar
    set guioptions-=L                           " remove left-hand scroll bar
endif

set encoding=utf-8                              " set GUI encoding to utf-8
set number                                      " show line numbers
set showmatch                                   " highlight matching [{()}]
set cursorline                                  " highlight current line

set tabstop=4                                   " number of visual spaces per TAB
set softtabstop=4                               " number of spaces in tab when editing
set shiftwidth=4                                " number of spaces using the indent operations (<< and >>)
set expandtab                                   " tabs are spaces
set autoindent                                  " automagically indent new lines
set wrap                                        " Wrap text
set linebreak                                   " Wrap text by words

set clipboard=unnamed                           " Use OS clipboard by default

set incsearch                                   " search as characters are entered
set ignorecase                                  " ignore case when searching
set smartcase                                   " case-sensitive if search contains an uppercase char

set autochdir                                   " automatically change CWD to current buffer's directory

" File-specific indentation
autocmd Filetype html setlocal ts=2 sts=2 sw=2

let mapleader = "\<Space>"                      " Leader key
:nmap <Leader>v :e $MYVIMRC                     " opens $MYVIMRC for editing, or use :tabedit $MYVIMRC

set laststatus=2                                " shows airline immediately
set noshowmode                                  " hide the default mode display
let g:airline#extensions#tabline#enabled = 1    " show tabs

let g:airline_powerline_fonts = 1               " Airline plugin: Fancy symbols

let g:ctrlp_max_files = 1000                    " max ctrl-p files
let g:ctrlp_working_path_mode = 1               " search from current directory instead of project root

" CtrlP plugin: Ignores
set wildignore+=*.exe,*.dll,*.msi
set wildignore+=*.log,*.swp,*.tmp
set wildignore+=*.bmp,*.jpg,*.png,*.gif
set wildignore+=*.doc,*.docx,*.ppt,*.pptx,*.xls,*.xlsx,*.pdf
set wildignore+=*/target/*
