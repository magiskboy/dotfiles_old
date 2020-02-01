filetype off

set rtp+=~/.config/nvim/bundle/vim-plug

call plug#begin('~/.vim/bundle')

" =================== UI =======================
" File explore
Plug 'scrooloose/nerdtree'

" Show changed git status in sign column
Plug 'airblade/vim-gitgutter'

Plug 'lifepillar/vim-solarized8'

" Indent guild line
Plug 'Yggdroot/indentLine'

" Vim modern status line
Plug 'vim-airline/vim-airline'

" Preview color in css
Plug 'ap/vim-css-color'

" Vim tag bar
Plug 'majutsushi/tagbar'

Plug 'tpope/vim-surround'

" ================ Utilities ==================
" Asynchronous syntax checker
Plug 'w0rp/ale'

" Code completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" Solid pack language syntax highlight
Plug 'sheerun/vim-polyglot'

" Auto fill closer chracters
Plug 'jiangmiao/auto-pairs'

" File search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Helper for UNIX
Plug 'tpope/vim-eunuch'

" Test vim
Plug 'janko/vim-test'

Plug 'tpope/vim-commentary'

Plug 'sbdchd/neoformat'

Plug 'tibabit/vim-templates'

Plug 'heavenshell/vim-pydocstring'

call plug#end()

filetype on
