fu! GenerateUUID()

python << EOF
import uuid
import vim

vim.command("let generatedUUID = \"%s\"" % str(uuid.uuid4()))
EOF

:execute "normal i" . generatedUUID . ""
endfunction

noremap <Leader>u :call GenerateUUID()<CR>
