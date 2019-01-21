set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width of 2

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


" Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']
let b:ale_fixers = ['eslint', 'prettier']

au FileType javascript.jsx nmap <buffer> <C-k> <Plug>(ale_previous_wrap)
au FileType javascript.jsx nmap <buffer> <C-j> <Plug>(ale_next_wrap)
