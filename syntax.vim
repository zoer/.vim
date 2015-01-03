hi Comment ctermfg=251
hi link confComment Comment

hi CursorLine ctermbg=240 cterm=none
hi CursorColumn ctermbg=235
hi ColorColumn ctermbg=242
hi Visual ctermbg=246
set cursorline

set statusline+=%{synIDattr(synIDattr(line('.'),col('.'),1),'name')}

" a little more informative version of the above
nmap <Leader>sI :call <SID>SynStack()<CR>

function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
