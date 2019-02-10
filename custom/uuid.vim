fu! GenerateUUID()
python3 << EOF
import uuid
import vim

vim.command("let generatedUUID = \"%s\"" % str(uuid.uuid4()))
EOF

  :execute "normal a" . generatedUUID . ""
endfunction

noremap <Leader>u :call GenerateUUID()<CR>
