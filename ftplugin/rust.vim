au FileType rust nnoremap <buffer> gd <plug>DeopleteRustGoToDefinitionDefault<CR>
au FileType rust nnoremap <buffer> K :call LanguageClient#textDocument_hover()<CR>
au FileType rust nnoremap <buffer> gr :call LanguageClient_textDocument_rename()<CR>
au FileType rust nmap <buffer> <Leader>gf :RustTest<CR>
au FileType rust nmap <buffer> <Leader>gt :RustTest!<CR>
au FileType rust nnoremap <Leader>r :RustRun<CR>
