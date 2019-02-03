setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
setlocal nowrap
setlocal cc=80

hi String ctermfg=220
hi Number ctermfg=196
hi rubyConstant ctermfg=87
hi rubyFunction ctermfg=153
hi rubyTodo ctermfg=18 ctermbg=184

hi yardGenericTag ctermfg=220
hi yardTodo ctermfg=165
hi link yardType rubyConstant
hi link yardLiteral Operator
hi link yardDuckType rubyFunction

nnoremap <buffer> <Leader>sw :Ag --ruby "<C-R><C-W>"<SPACE><C-left><Left><space>

let b:ale_fixers = ['rubocop']
let g:ale_ruby_rubocop_options = '--except Rails/DynamicFindBy,Layout/CommentIndentation,Style/Documentation'

au FileType ruby map <buffer> <leader>r :Runcmd ruby %<cr>
au FileType ruby noremap <buffer> <leader>rf :%s/,\s*:focus//g<CR>
au FileType ruby noremap <buffer> <leader>rd :%s/\s*debugger\s*\n//g<CR>

fun! Runcmd(cmd)
  let cmd = substitute(a:cmd, "%", expand('%:p') , "")
  silent! exe "noautocmd botright pedit ".cmd
  noautocmd wincmd P
  set buftype=nofile
  exe "noautocmd r! ".cmd
  noautocmd wincmd p
endfun
com! -nargs=1 Runcmd :call Runcmd("<args>")
