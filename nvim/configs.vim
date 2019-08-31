filetype plugin indent on

" Set true support color
set termguicolors

set t_Co=256

syntime on

colorscheme onedark

" Don't make Vim vi-compatibile.
set nocompatible               

" Enable syntax highlighting.
syntax on                     

" Don't break line when width line more than width window
set wrap

set updatetime=100

" Copy indent to the new line. 
set autoindent                 

" Yank and paste with system clipboard
set clipboard=unnamed

" Highlight certain column(s). 
set colorcolumn=80             

set signcolumn=yes

" Highlight the current line. 
set cursorline                

" Use UTF-8 without BOM. 
set encoding=utf-8 nobomb      

" Enable search highlighting.
set hlsearch                   

" Ignore case in search patterns. 
set noignorecase                

" Highlight search pattern 
set incsearch               

" Do not redraw the screen while 
set lazyredraw                 

" Hide mouse pointer while typing. 
set mousehide              

" Show line number. 
set number relativenumber numberwidth=5

" Set border for window
set fillchars+=vert:│

" Show cursor position. 
set ruler                      

 " Limit syntax highlighting (this avoids the very slow redrawing when files contain long lines).
set synmaxcol=256

syntax sync minlines=100

" Set global <TAB> settings. 
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" Enable fast terminal connection.
set ttyfast                    

" Automatically save undo history. 
set undofile noswapfile nobackup
set undodir=/tmp

" Allow cursor to be anywhere. 
set virtualedit=all            

" Disable beeping and window flashing
set novisualbell   
set noerrorbells 
set t_vb=        

" Completion (by hitting <TAB> in command mode, Vim will show the possible
" matches just above the command line with the first match highlighted).
" Enable enhanced command-line 
set wildmenu                   
" Allow windows to be squashed. 
set winminheight=0             

" Enable folding
set foldmethod=indent
set foldlevel=99

" Show status line
set laststatus=2

" Disable messge popup in macvim
set guioptions+=c
