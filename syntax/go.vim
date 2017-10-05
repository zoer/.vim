syn match       goBlockBraces /{$/
syn match       goBlockBraces /\(^\|\t\)}/
hi goBlockBraces ctermfg=DarkGrey
hi goTodo ctermfg=18 ctermbg=184
" hi def link goBlockBraces Comment
