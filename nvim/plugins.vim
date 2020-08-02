filetype off

set rtp+=~/.config/nvim/bundle/vim-plug

call plug#begin('~/.vim/bundle')

" File explore
Plug 'scrooloose/nerdtree'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Indent guild line
Plug 'Yggdroot/indentLine'

" Vim modern status line
Plug 'vim-airline/vim-airline'

" Vim tag bar
Plug 'majutsushi/tagbar'

" Asynchronous syntax checker
Plug 'w0rp/ale'

Plug 'tpope/vim-surround'

" Solid pack language syntax highlight
Plug 'sheerun/vim-polyglot'

Plug 'tomasr/molokai'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Code completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'

" Auto fill closer characters
Plug 'jiangmiao/auto-pairs'

" File search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Helper for UNIX
Plug 'tpope/vim-eunuch'

" Test vim
Plug 'janko/vim-test'

Plug 'tpope/vim-commentary'

Plug 'heavenshell/vim-pydocstring'

call plug#end()

filetype on
