autocmd FileType xml,yaml,json setlocal ts=2 sts=2 sw=2
autocmd FileType javascript,typescript,jsx setlocal ts=2 sts=2 sw=2
autocmd FileType html,css,sass,scss,less,jinja,htmldjango setlocal ts=2 sts=2 sw=2

autocmd FileType json let g:indentLine_setConceal = 0

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd FileType python,typescript,javascript,css,sass,less,scss call deoplete#enable()

autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

autocmd BufWritePost * GitGutter

autocmd BufWritePost * :silent! %s/\s\+$\| \+\zs\t//g
