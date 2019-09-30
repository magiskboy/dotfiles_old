filetype off

set rtp+=~/.config/nvim/bundle/vim-plug

call plug#begin('~/.vim/bundle')

" =================== UI =======================
" File explore
Plug 'scrooloose/nerdtree'

" Solid pack language syntax highlight
Plug 'sheerun/vim-polyglot'

" Show changed git status in sign column
Plug 'airblade/vim-gitgutter'

" Indent guild line
Plug 'Yggdroot/indentLine'

" Vim modern status line
Plug 'vim-airline/vim-airline'

" Preview color in css
Plug 'ap/vim-css-color'

" Vim tag bar
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-surround'

" Onedark atom theme
Plug 'joshdick/onedark.vim'

" ================ Utilities ==================
" Asynchronous syntax checker
Plug 'w0rp/ale'

" Code completion engine
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

" Python completer
Plug 'deoplete-plugins/deoplete-jedi'

" Auto fill closer chracters
Plug 'jiangmiao/auto-pairs'

" File search
Plug 'kien/ctrlp.vim'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Helper for UNIX
Plug 'tpope/vim-eunuch'

" Test vim
Plug 'janko/vim-test'

Plug 'SkyLeach/pudb.vim'

call plug#end()

filetype on
