let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_bin_path = "/usr/local/go/bin"

let $GO_ENV="test"
autocmd FileType go map <leader>go :w<CR>:GoRun<enter>
autocmd FileType go map <leader>gd :w<CR>:GoDef<enter>
autocmd FileType go map <leader>r :w<CR>:!go test ./...<enter>
autocmd FileType go map <leader>rt :w<CR>:!./test.sh<enter>
autocmd FileType go map <leader>b :w<CR>:!./bench.sh<enter>
autocmd FileType go map <leader>l :w<CR>:GoLint<enter>
autocmd FileType go map <leader>v :w<CR>:GoVet<enter>
autocmd FileType go map <leader>mt :TestFile<enter>
autocmd FileType go map <leader>mm :TestLast<enter>
autocmd FileType go map <leader>mtl :TestNearest<enter>
