let mapleader = ","
nmap <f8> :TagbarToggle<cr>
nmap <tab> :NERDTreeToggle<cr>

" vim test
nmap  tn :TestNearest<cr>
nmap  tf :TestFile<cr>
nmap  ts :TestSuite<cr>

nmap <leader>p :call FZF_Wrapper()<cr>
nmap <leader>r :Rg<cr>
nmap <leader>t :Tags<cr>
nmap <leader>aa :call OpenFloatTerm()<cr>

" Minimize block code
nnoremap <space> za

" Fast switch window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>

nmap <F2> :CocCommand document.renameCurrentWord<cr>

augroup filetype_python
    autocmd!
    autocmd FileType python iabbrev iff if:<left>
    autocmd FileType python iabbrev fof for i in range():<left><left>
    autocmd FileType python iabbrev whf while:<left>
    autocmd FileType python iabbrev imp import
augroup END

inoremap <expr><tab>  pumvisible() ? "\<c-n>" : "\<tab>"
