filetype plugin indent on

" Set true support color
set termguicolors

set t_Co=256

syntime on

colorscheme rigel

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

set diffopt+=vertical

let g:python3_host_prog = expand('/Users/nkthanh/.pyenv/shims/python')
let g:python_host_prog = expand('/Users/nkthanh/.pyenv/shims/python')

" ============= Ident line ==============
" Set indent line guide character
let g:indentLine_char = '│'

" Set color for ident line
let g:indentLine_color_term = 239

" ============= NERD Tree ===============
" Ignore entries for NERDTree
let NERDTreeIgnore = [
    \'node_modules', 'bower_components', 'build', 'dist',
    \'env', '__pycache__', '.pytest_cache',
    \'.class'
    \]

let NERDTreeMinimalUI = 1

" Move NERD to right side screen
let g:NERDTreeWinPos = "right"

" Hide the Nerdtree status line to avoid clutter
let g:NERDTreeStatusline = ''

" ============ Auto pair ================
let g:AutoPairsShortcutToggle = ""

" ============= Vim airline ==============
let g:airline_extensions = ['branch', 'hunks', 'ale']

" Do not draw separators for empty sections (only for the active window) >
let g:airline_skip_empty_sections = 1

" Format vim airline
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z', 'warning', 'error']]

" format tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#coc#enabled = 1

" Add clock in status line
function! AirlineInit()
  let g:airline_section_z = airline#section#create([g:airline_section_z, g:airline_symbols.space, ' %{strftime("%H:%M")}'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

" Configure error/warning section to use ale.nvim
let airline#extensions#ale = {
    \'error_symbol': 'E:',
    \'warning_synbol': 'W:'
    \}

" Disable vim-airline in preview mode
let g:airline_exclude_preview = 1

" Enable caching of syntax highlighting groups
let g:airline_highlighting_cache = 1

"============== ALE ================
" Define ALE linter
let b:ale_linters = {
    \'javascript': ['eslint'],
    \'typescript': ['tslint'],
    \'python': ['pylint']
    \}

" Setting icon before error/warning ale
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'

" Format ALE message
let g:ale_python_pylint_use_msg_id = 1
let g:ale_echo_msg_format = '[%linter%] [%code%] %s [%severity%]'

" Disable ale warning/error in buffer
let g:ale_set_highlights = 0

" Setting ale window
let g:ale_open_list = 0

" ============= One dark theme ==============
" Hidden end of buffer `~`
let g:onedark_hide_endofbuffer = 1

" Simulator italic font
let g:onedark_terminal_italics = 1

" ============= Tagbar ===============
" Set dropdown for tagbar
let g:tagbar_iconchars = ['▸', '▾']


" ========== vim-test ============
let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'neovim',
  \ 'suite':   'basic',
\}

hi RedundantWhitespace cterm=NONE ctermbg=white ctermfg=NONE gui=NONE guibg=white guifg=NONE
match RedundantWhitespace /\s\+$\| \+\zs\t/
autocmd BufWritePost * :silent! %s/\s\+$\| \+\zs\t//g

augroup indent_file
    autocmd FileType xml,yaml,json setlocal ts=2 sts=2 sw=2
    autocmd FileType javascript,typescript,jsx setlocal ts=2 sts=2 sw=2
    autocmd FileType html,css,sass,scss,less,jinja,htmldjango setlocal ts=2 sts=2 sw=2
augroup END

autocmd FileType json let g:indentLine_setConceal = 0
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd BufWritePost * GitGutter
au BufNewFile *.py 0r ~/workspace/dotfiles/nvim/py.template

" Hard mode, disable arrow key
let g:HardMode_level = 'wannabe'
let g:HardMode_hardmodeMsg = 'Don''t use this!'
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

if executable('rg')
    let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
    set grepprg=rg\ --vimgrep
    command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif
function FZF_Wrapper()
    function! s:edit_file(item)
        let l:pos = stridx(a:item, ' ')
        let l:file_path = a:item[pos+1:-1]
        execute 'silent e' l:file_path
    endfunction
    function! s:files()
        let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
        return l:files
    endfunction
    call fzf#run({
        \'source': <sid>files(),
        \ 'sink': function('s:edit_file'),
        \ 'options': '-m --preview "bat {} --color=always --theme=\"Monokai Extended Origin\""',
        \ 'down': '60%' })
endfunction

hi ALEWarning cterm=BOLD ctermbg=NONE ctermfg=NONE gui=BOLD guibg=NONE guifg=NONE
hi GitGutterAdd cterm=BOLD ctermbg=NONE ctermfg=green gui=BOLD guibg=NONE guifg=lightgreen
hi GitGutterDelete cterm=BOLD ctermbg=NONE ctermfg=red gui=BOLD guibg=NONE guifg=red
hi GitGutterChange cterm=BOLD ctermbg=NONE ctermfg=lightblue gui=BOLD guibg=NONE guifg=lightblue
hi ALEErrorSign cterm=BOLD ctermbg=NONE ctermfg=red gui=BOLD guibg=NONE guifg=red
hi ALEWarningSign cterm=BOLD ctermbg=NONE ctermfg=white gui=BOLD guibg=NONE guifg=yellow
hi EndOfBuffer cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=bg
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=234 gui=NONE guibg=NONE guifg=grey
hi LineNr cterm=NONE ctermbg=NONE ctermfg=NONE gui=NONE guibg=NONE guifg=NONE
