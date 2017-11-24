set tabstop=4

set shiftwidth=4

"set softtabstop=4

set colorcolumn=80

"let g:NERDDefaultAlign = 'start'

map <leader>d :GoDecls<CR>
set foldmethod=manual
au FileType go nnoremap <Leader>sw :Ag --go "<C-R><C-W>"<SPACE><C-left><Left><space>
