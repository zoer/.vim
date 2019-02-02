nnoremap <buffer> gd <plug>DeopleteRustGoToDefinitionDefault<CR>
nnoremap <buffer> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <buffer> gr :call LanguageClient_textDocument_rename()<CR>
nmap <buffer> <Leader>gf :RustTest<CR>
nmap <buffer> <Leader>gt :RustTest!<CR>
nnoremap <Leader>r :RustRun<CR>
