setlocal tabstop=4
setlocal shiftwidth=4
"setlocal softtabstop=4
setlocal colorcolumn=80
setlocal textwidth=0

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

setlocal foldmethod=syntax
nmap <buffer> <leader>rt <Plug>(go-run-tab)
nmap <buffer> <leader>rs <Plug>(go-run-split)
nmap <buffer> <leader>rv <Plug>(go-run-vertical)
nmap <buffer> <leader>r <Plug>(go-run)
nmap <buffer> <leader>gr :GoRename<cr>
nmap <buffer> <leader>gd :GoDoc<cr>
nnoremap <buffer> <Leader>sw :Ag --go "<C-R><C-W>"<SPACE><C-left><Left><space>
nnoremap <buffer> <Leader>il :GoImportAs log github.com/sirupsen/logrus<CR>
nnoremap <buffer> <Leader>gr :GoRename<CR>
nnoremap <buffer> <Leader>ga :GoAlternate<CR>
nnoremap <buffer> <leader>d :GoDecls<CR>
nnoremap <buffer> <leader>ii :GoImpl<CR>
nnoremap <buffer> <leader>ip :GoImport github.com/kr/pretty<CR>
nmap <buffer> <leader>b  <Plug>(go-build)
nmap <buffer> <leader>r :w<CR> <Plug>(go-run)
nmap <buffer> <leader>t :GoTest<CR>
nmap <buffer> <leader>d <Plug>(go-doc)
nmap <buffer> <leader>f :call FormatGoSQLQuery()<cr>
nmap <buffer> <leader>at :GoAddTags<space>
noremap <buffer> <leader>gk :silent! exec "!pkill -f gocode"<CR>

let b:ale_linters = ['gobuild', 'gofmt']
