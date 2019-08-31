nmap <F8> :TagbarToggle<CR>
nmap <TAB> :NERDTreeToggle<CR>
nmap <c-e> :ALENext<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

nmap <c-n> :TestNearest<CR>
nmap <c-f> :TestFile<CR>
nmap <c-s> :TestSuite<CR>

nmap <c-o> :CtrlPTag<CR>

nnoremap <space> za

" Fast switch window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
