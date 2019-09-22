" ============= Ident line ==============
" Set indent line guide character
let g:indentLine_char = '│'

" Set color for ident line
let g:indentLine_color_term = 239

" Ignore file follow gitignore for ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard',]

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

" Define custom airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {} 
endif

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
let g:ale_list_window_size = 10

" ============= One dark theme ==============
" Hidden end of buffer `~`
let g:onedark_hide_endofbuffer = 1

" Simulator italic font
let g:onedark_terminal_italics = 1

" ============= Tagbar ===============
" Set dropdown for tagbar
let g:tagbar_iconchars = ['▸', '▾']

" set tag filename
set tags=tags

" =========== CtrlP ==============
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'

" Deoplete
let g:deoplete#enable_at_startup = 0
let g:python3_host_prog = expand('/usr/local/bin/python3')
let g:python_host_prog = expand('/usr/bin/python')

" =========== Jedi ===============
let g:deoplete#sources#jedi#enable_typeinfo = 1
let g:deoplete#sources#jedi#show_docstring = 1

" =========== Clang ==============
let g:deoplete#sources#clang#libclang_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/8.0.0_1/lib/clang/8.0.0/include'
