set tabstop=4

set shiftwidth=4

"set softtabstop=4

set colorcolumn=80
set textwidth=0

"let g:NERDDefaultAlign = 'start'
" let g:go_bin_path = '/usr/local/bin'
let g:go_fmt_experimental = 0
let g:go_highlight_generate_tags = 1
let g:go_fold_enable = ['import', 'varconst', 'package_comment']
"let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment', 'comment']


au FileType go setlocal foldmethod=syntax
au FileType go nmap <leader>rt <Plug>(go-run-tab)
au FileType go nmap <leader>rs <Plug>(go-run-split)
au FileType go nmap <leader>rv <Plug>(go-run-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>gr :GoRename<cr>
au FileType go nmap <leader>gd :GoDoc<cr>
au FileType go nnoremap <Leader>sw :Ag --go "<C-R><C-W>"<SPACE><C-left><Left><space>
au FileType go nnoremap <Leader>il :GoImportAs log github.com/sirupsen/logrus<CR>
au FileType go nnoremap <Leader>gr :GoRename<CR>
au FileType go nnoremap <Leader>ga :GoAlternate<CR>
au FileType go nnoremap <leader>d :GoDecls<CR>
au FileType go nnoremap <leader>ii :GoImpl<CR>
