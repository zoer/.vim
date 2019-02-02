function! FormatGoSQLQuery()
    call searchpos('`', 'bW')
    let l:tabs = matchstr(getline('.'), '^\t\+')
    let l:count = len(l:tabs) + 1
    let l:tabsed = ""
    while l:count > 0
        let l:count = l:count - 1
        let l:tabsed .= "\t"
    endwhile
    exe "normal a\<cr>\<esc>0"
    " exe "normal! 1\<space>"
    exe "normal! m8"
    call searchpos('`', 'W')
    "call append(line('.')-1, '')
    exe "normal! 1\<bs>a\<cr>\<esc>"
    exe "normal! k$"
    exe "normal! m9"
    exe "'8,'9!pg_format -s 2 - | sed 's/^/".l:tabsed."/'"
    "exe "'8,'9s/^/\t/"
    exec "normal '8"
    call searchpos('`', 'W')
    if (col('.') > 1)
        exe "normal kJx"
    else 
        exe "normal kdd"
    endif
endfunction

function FormatSelectedSQLQuery() range
    exe "'<,'>!pg_format -s 2 -"
endfunction
