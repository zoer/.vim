setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab
setlocal nowrap
setlocal cc=80

vmap <buffer> <leader>f :call FormatSelectedSQLQuery()<cr>
