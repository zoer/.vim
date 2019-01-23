set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width of 2

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set nowrap

set cc=80

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

au FileType ruby nnoremap <Leader>sw :Ag --ruby "<C-R><C-W>"<SPACE><C-left><Left><space>

let b:ale_fixers = ['rubocop']
let g:ale_ruby_rubocop_options = '--except Rails/DynamicFindBy'
