nnoremap <buffer> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <buffer> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <buffer> gr :call LanguageClient_textDocument_rename()<CR>
nmap <buffer> <Leader>t :RustTest!<CR>
nmap <buffer> <Leader>ft :RustTest!<CR>
nnoremap <Leader>r :RustRun<CR>

hi link rustCommentLineDoc rustCommentLine
"hi ALEError ctermbg=8 term=underline
"hi ALEInfo ctermbg=8 term=underline
setlocal signcolumn=yes

let g:ale_lint_on_text_changed = 0
let g:ale_enabled = 1
