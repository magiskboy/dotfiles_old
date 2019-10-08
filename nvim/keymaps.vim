let mapleader = ","
nmap <f8> :TagbarToggle<cr>
nmap <tab> :NERDTreeToggle<cr>
nmap <leader><cr> :vsplit $MYVIMRC<cr>
nmap <leader>sv :source $MYVIMRC<cr>
nmap <leader>vs :vsplit<cr>
nmap <leader>hs :split<cr>

" vim test
nmap  tn :TestNearest<cr>
nmap  tf :TestFile<cr>
nmap  ts :TestSuite<cr>

"  Get head branch
nmap <leader>ggl :diffget //2<cr>
" Get merge brach
nmap <leader>ggr :diffget //3<cr>

" Search files
nmap <leader>p :Files<cr>
" Search file content with regex
nmap <leader>r :Rg<cr>
" Search function, class, variable follow tag
nmap <leader>t :Tags<cr>

" Minimize block code
nnoremap <space> za
inoremap jk <esc>

" Fast switch window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

nmap <F2> :CocCommand document.renameCurrentWord

augroup filetype_python
    autocmd!
    autocmd FileType python iabbrev iff if:<left>
    autocmd FileType python iabbrev fof for i in range():<left><left>
    autocmd FileType python iabbrev whf while:<left>
    autocmd FileType python iabbrev imp import
augroup END

inoremap <expr><tab>  pumvisible() ? "\<c-n>" : "\<tab>"
