set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

let b:ale_fixers = ['prettier']

nmap <buffer> <C-k> <Plug>(ale_previous_wrap)
nmap <buffer> <C-j> <Plug>(ale_next_wrap)
