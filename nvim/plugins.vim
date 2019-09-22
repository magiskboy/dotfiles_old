filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" =================== UI =======================

" File explore
 Plugin 'scrooloose/nerdtree'

" Solid pack language syntax highlight
Plugin 'sheerun/vim-polyglot'

" Show changed git status in sign column
Plugin 'airblade/vim-gitgutter'

" Indent guild line
Plugin 'Yggdroot/indentLine'

" Vim modern status line
Plugin 'vim-airline/vim-airline'

" Preview color in css
Plugin 'ap/vim-css-color'

" Vim tag bar
Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-surround'

" Onedark atom theme
Plugin 'joshdick/onedark.vim'

" ================ Utilities ==================
" Asynchronous syntax checker
Plugin 'w0rp/ale'

" Code completion engine
Plugin 'Shougo/deoplete.nvim'

" Python completer
Plugin 'deoplete-plugins/deoplete-jedi'

Plugin 'kana/vim-arpeggio'

" Auto fill closer chracters
Plugin 'jiangmiao/auto-pairs'

" File search
Plugin 'kien/ctrlp.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" Helper for UNIX
Plugin 'tpope/vim-eunuch'

" Typescript completer
Plugin 'mhartington/nvim-typescript'

Plugin 'tweekmonster/django-plus.vim'

" Test vim
Plugin 'janko/vim-test'

call vundle#end()

filetype on
