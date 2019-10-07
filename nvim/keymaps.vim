nmap <f8> :TagbarToggle<cr>
nmap <tab> :NERDTreeToggle<cr>
inoremap <expr><tab>  pumvisible() ? "\<c-n>" : "\<tab>"

" vim test
nmap <c-t><c-n> :TestNearest<cr>
nmap <c-t><c-f> :TestFile<cr>
nmap <c-t><c-s> :TestSuite<cr>

" Search all class definitions
nmap <c-s><c-t> /class \(\u\w\+\)( *\u\w\+ *)<cr>

" FZF key map
nmap <c-f> :Files<cr>
nmap <c-s> :Rg<cr>
nmap <c-d> :Tags<cr>

nnoremap <space> za

" Fast switch window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
