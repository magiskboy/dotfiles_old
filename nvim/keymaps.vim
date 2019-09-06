nmap <f8> :TagbarToggle<cr>
nmap <tab> :NERDTreeToggle<cr>
nmap <c-e> :ALENext<cr>
inoremap <expr><tab>  pumvisible() ? "\<c-n>" : "\<tab>"

" vim test
nmap <c-t><c-n> :TestNearest<cr>
nmap <c-t><c-f> :TestFile<cr>
nmap <c-t><c-s> :TestSuite<cr>

" ctrlp
nmap <c-t> :CtrlPTag<cr>
nmap <c-l> :CtrlPLine<cr>

nnoremap <space> za

" Fast switch window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
