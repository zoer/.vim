set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab


" Enable ESLint only for JavaScript.
let b:ale_linters = ['eslint']
let b:ale_fixers = ['eslint', 'prettier']
