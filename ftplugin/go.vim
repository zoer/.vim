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

let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_fmt_command = "goimports"
let g:go_bin_path = "/usr/local/go/bin"
let g:go_auto_type_info = 1
"let g:go_list_type = "quickfix"

let $GO_ENV="test"

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
au FileType go nmap <buffer> <leader>b  <Plug>(go-build)
au FileType go nmap <leader>r  :w<CR> <Plug>(go-run)
au FileType go nmap <leader>t  <Plug>(go-test)
au FileType go nmap <leader>d  <Plug>(go-doc)
