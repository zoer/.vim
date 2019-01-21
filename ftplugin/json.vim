set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width of 2

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

let b:ale_fixers = ['prettier']

au FileType json nmap <buffer> <C-k> <Plug>(ale_previous_wrap)
au FileType json nmap <buffer> <C-j> <Plug>(ale_next_wrap)
