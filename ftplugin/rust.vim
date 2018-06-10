"au FileType rust nmap <buffer> gd <plug>DeopleteRustGoToDefinitionDefault
" au FileType rust nnoremap <buffer> K  <plug>DeopleteRustShowDocumentation<CR>
"au FileType rust nnoremap <buffer> K :call LanguageClient_textDocument_hover()<CR>
au FileType rust nmap <buffer> gd <plug>DeopleteRustGoToDefinitionDefault<CR>
" au FileType rust nnoremap <buffer> gd :call LanguageClient_textDocument_definition()<CR>
au FileType rust nnoremap <buffer> gr :call LanguageClient_textDocument_rename()<CR>
au FileType rust nnoremap <Leader>r :RustRun<CR>
