" pip2 install --upgrade neovim
" pip3 install --upgrade neovim
"
" :verbose imap <tab> - checking for key mapping

set shell=/bin/bash
scriptencoding utf-8
"set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'junegunn/vim-easy-align'
Plug 'rking/ag.vim'
Plug 'chr4/nginx.vim'
Plug 'w0rp/ale', { 'do': 'npm -g install prettier eslint gqlint' }

" SQL
" sudo apt install pgformatter
" brew install pgformatter
Plug 'zoer/vim-simpledb', { 'branch': 'zoer/improvements' }
  let g:simpledb_show_timing = 0
Plug 'lifepillar/pgsql.vim'

"html
Plug 'rstacruz/sparkup', {'rtp': 'vim'}
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'

" javascript
Plug 'pangloss/vim-javascript'
" Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'
" Plug 'mattn/emmet-vim'
Plug 'jparise/vim-graphql'

"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"yaml
" Plug 'digitalrounin/vim-yaml-folds'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" navigation
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'szw/vim-tags'

"themes
Plug 'gmarik/ingretu'

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'noprompt/vim-yardoc'
Plug 'thoughtbot/vim-rspec'
Plug 'bcaccinolo/rspec-vim-folding'
Plug 'tpope/vim-git'
" Plug 'tpope/vim-liquid'
" Plug 'sunaku/vim-ruby-minitest'
" Plug 'vim-scripts/scratch.vim'

" Tepmlate engines
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-haml'
Plug 'timcharper/textile.vim'
Plug 'tpope/vim-markdown'
Plug 'slim-template/vim-slim'
Plug 'digitaltoad/vim-pug'
Plug 'cespare/vim-toml'
Plug 'uarun/vim-protobuf'

" Ruby
Plug 'jgdavey/vim-blockle'
Plug 'ngmy/vim-rubocop'

" Python
Plug 'nvie/vim-flake8'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
if has('nvim')
  Plug 'sebdah/vim-delve'
end
Plug 'AndrewRadev/splitjoin.vim'
Plug 'zchee/deoplete-go', { 'do': 'make' }
" Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/nvim/symlink.sh' }

" Rust
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'

" C
Plug 'zchee/deoplete-clang'

" Javascript
Plug 'Galooshi/vim-import-js', { 'do': 'npm -g install import-js' }
"Plug 'leafgarland/typescript-vim'
" Plug 'Quramy/tsuquyomi' " ts

" CSV
" Plug 'chrisbra/csv.vim'
" Plug 'mechatroner/rainbow_csv'

Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'tpope/vim-unimpaired'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
"Plug 'chrisbra/NrrwRgn'
Plug 'mbbill/undotree'
" Plug 'ap/vim-css-color'
Plug 'Lokaltog/powerline', { 'branch': 'develop' }

" pairs
"Plug 'cohama/lexima.vim' conflicting with UltiSnippets see https://github.com/cohama/lexima.vim/issues/32
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" " All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on

syntax enable
set synmaxcol=500
filetype plugin indent on

"map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
map ,n :NERDTreeToggle<CR>
map ,m :NERDTreeFind<CR>
"map <C-S-O> :CtrlPBuffer<CR>
let NERDTreeIgnore = ['\.swp$','\.swo$','\.pyc$']
let g:NERDTreeWinSize = 30

set switchbuf=useopen,usetab
set hidden

" map <ESC><ESC> <nop>

" quick save
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
"inoremap <leader>w <ESC>:w<CR>

" noremap <A-j> :m+<CR>
" noremap <A-k> :m-2<CR>
" inoremap <A-j> :m+<CR>
" inoremap <A-k> :m-2<CR>
" vnoremap <A-j> :m+<CR>
" vnoremap <A-k> :m-2<CR>

nmap t o<ESC>k
nmap T O<ESC>j

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:30'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v([\/]\.(git|hg|svn)|tmp|log|vendor)$',
  \ 'file': '\v\.(exe|so|dll|swp|swo)$',
  \ }
let g:ctrlp_prompt_mappings = {
  \ 'PrtClearCache()':      ['<c-r>'],
  \ }
  "\ 'ToggleRegex()':        ['<F5>'],
let g:ctrlp_cmd = 'CtrlPMRUFiles' "CtrlPMixed
let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_use_caching = 1
let g:ctrlp_open_new_file = 'et'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
if executable('rg')
  let g:ctrlp_user_command = 'rg --vimgrep --no-heading %s'
  set grepprg=rg\ --no-heading\ --vimgrep
  set grepformat=%f:%l:%c:%m
endif

" Show trailing whitespaces
highlight ExtraWhitespace ctermbg=NONE guibg=NONE
match ExtraWhitespace /\s\+$/
"match ExtraWhitespace /\s\+$\|\t/

set listchars=tab:▹\ ,trail:~,extends:>,precedes:<,nbsp:%
set list

" Remove trailine spaces on save
autocmd BufWritePre Makefile,*.vim,*.c,*.vue,*.rs,*.sql,*.rb,*.py,*.md,*.go,*.sass,*.css,*.yml,*.coffee,*.js,*.rxlsx,*.erb,*.haml,*.slim :%s/\s\+$//e

set nu
set nuw=4

" map <C-J> :bnext<CR>
" map <C-K> :bprev<CR>
" map <C-L> :tabn<CR>
" map <C-H> :tabp<CR>

set showcmd

"Multi-cursors
let g:multi_cursor_exit_from_insert_mode = 1

"auto-pairs
"let g:AutoPairsMapSpace = 1

set nocursorline
set nowrap

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '||'
set laststatus=2

"Tabs
set splitbelow
set splitright

" ----- Ruby -------------------
au BufNewFile,BufRead *.rxlsx set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead *.axlsx set filetype=ruby
au BufNewFile,BufRead Berksfile set filetype=ruby
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *.cap set filetype=ruby
au BufNewFile,BufRead *_spec.rb set filetype=ruby.rspec
au FileType ruby map <buffer> <leader>r :Runcmd ruby %<cr>
au FileType ruby noremap <leader>rf :%s/,\s*:focus//g<CR>
au FileType ruby noremap <leader>rd :%s/\s*debugger\s*\n//g<CR>

fun! Runcmd(cmd)
  let cmd = substitute(a:cmd, "%", expand('%:p') , "")
  silent! exe "noautocmd botright pedit ".cmd
  noautocmd wincmd P
  set buftype=nofile
  exe "noautocmd r! ".cmd
  noautocmd wincmd p
endfun
com! -nargs=1 Runcmd :call Runcmd("<args>")

let ruby_operators = 1
let ruby_fold = 1
let ruby_foldable_groups = 'def << #'

" ------------------------------


let g:blockle_mapping = "<leader>]"

set incsearch

" vimdiff
noremap <leader>d2 :diffget //2<CR>
noremap <leader>d3 :diffget //3<CR>
noremap <leader>dw :Gwrite!<CR>
noremap <leader>du :diffupdate<CR>

" json
nmap =j :%!python -m json.tool<CR>
" need to fix
"nmap =j :%!python -c 'import sys,json;data=json.loads(sys.stdin.read()); print(json.dumps(data, sort_keys=True,indent=2, separators=(",", ": ")))'<CR>

" xml
nmap =x :%!python -c 'import xml.dom.minidom,sys; data=sys.stdin.read(); xml = xml.dom.minidom.parseString(data);print(xml.toprettyxml());'<CR>

" gitgutter
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk

" 80 characters per line
set textwidth=80
set colorcolumn=+1

" Toggle paste mode
set pastetoggle=<F2>

"undotree
if has("persistent_undo")
  set undodir=$HOME/.undodir/
  set undofile
endif
nnoremap U :UndotreeToggle<CR>

" CTags
nmap <leader>ct :TagbarToggle<CR>
let g:rails_ctags_arguments=['--languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)']

colorscheme my_monokai
set fillchars+=vert:\│

source $HOME/.vim/syntax.vim
source $HOME/.vim/syntax/gitgutter.vim

for f in split(glob('~/.vim/langs/*.vim'), '\n')
  exe 'source' f
endfor

" mac
set guifont=Monaco:h15
set guioptions-=r

" print
:set printfont=Courier:h10

" ----- Align ---------------------
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" ----- Search ---------------------

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore-dir vendor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 0

endif
inoremap <expr> <c-x><c-f> fzf#vim#complete#path(
    \ "find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
    \ fzf#wrap({'dir': expand('%:p:h')}))
nnoremap <Leader>s :Rg<SPACE>
nnoremap <Leader>sw :Rg "<C-R><C-W>"<SPACE><C-left><Left><space>
au FileType ruby nnoremap <buffer> <Leader>sw :Rg -truby "<C-R><C-W>"<SPACE><C-left><Left><space>
au FileType javascript.jsx nnoremap <buffer> <Leader>sw :Rg -tjs "<C-R><C-W>"<SPACE><C-left><Left><space>
au FileType go nnoremap <buffer> <Leader>sw :Rg -tgo "<C-R><C-W>"<SPACE><C-left><Left><space>
au FileType rust nnoremap <buffer> <Leader>sw :Rg -trust "<C-R><C-W>"<SPACE><C-left><Left><space>

command! -bang -complete=file_in_path -nargs=+ Rg call
  \ fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --color "always" '. '<args>', 1, <bang>0)

map <leader><Space> :noh<Enter>

" ----- Snippets ---------------------
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir='~/.vim/UltiSnips'
" let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips", "~/.vim/snippets", "UltiSnips"]
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" make UltiSnippets works with YCM/deoplete
"let g:UltiSnipsExpandTrigger = "<nop>"
"let g:ulti_expand_or_jump_res = 0
"function! ExpandSnippetOrCarriageReturn()
"  let snippet = UltiSnips#ExpandSnippetOrJump()
"  if g:ulti_expand_or_jump_res > 0
"    return snippet
"  else
"    return "\<CR>"
"  endif
"endfunction
"let g:endwise_no_mappings = 1
"inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>\<C-R>=EndwiseDiscretionary()\<CR>"

"inoremap <expr><tab> (pumvisible()?(empty(v:completed_item)?"\<C-n>":"\<C-y>"):"\<tab>")
"inoremap <expr><CR> (pumvisible()?(empty(v:completed_item)?"\<CR>\<CR>":"\<C-y>"):"\<CR>")


" ----- Move lines ----------------------
"nnoremap <A-j> :m .+1<CR>==
"nnoremap <A-k> :m .-2<CR>==
"inoremap <A-j> <Esc>:m .+1<CR>==gi
"inoremap <A-k> <Esc>:m .-2<CR>==gi
"vnoremap <A-j> :m '>+1<CR>gv=gv
"vnoremap <A-k> :m '<-2<CR>gv=gv

" ----- Gist -------------------
" If you want to show your private gists with ":Gist -l"
let g:gist_show_privates = 1
" If you want your gist to be private by default
let g:gist_post_private = 1

" ----- local .vimrc ----------
set exrc
set secure

" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue,*.js"
let g:closetag_xhtml_filenames = "*.xhtml,*.js"
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_close_shortcut = '<leader>>'

" ---------------------------
" Save on GoBuild
set autowrite

" --- Completion Popup
:highlight Pmenu ctermbg=238 gui=bold

" --- Save with sudo
cmap w!! w !sudo tee > /dev/null %


" ----- deoplete --------------
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always=0
let g:deoplete#file#enable_buffer_path=1
let g:deoplete#auto_completion_start_length = 0

"let g:python_host_prog="/usr/local/bin/python2"
let g:python3_host_prog = "/usr/local/bin/python3"
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/4.0.0/lib/clang'
let g:deoplete#sources#clang#libclang_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:neoinclude#_paths = '/usr/local/Cellar/postgresql/9.5.5/include/server/'

" ----- fzf -------------------
noremap <c-s> :Files %:h<CR>
noremap <leader><tab> :Files!<CR>
nmap <silent> <c-h> :History<CR>
nmap <silent> <c-l> :Lines <c-r><c-w><CR>
let g:fzf_history_dir = '~/.fzf-history'

" ----- nerdcommenter ---------
let NERDSpaceDelims=1

" ----- mxw/vim-jsx -----------
let g:jsx_ext_required = 0

" ----- Rust --------
autocmd BufReadPost *.rs setlocal filetype=rust
"let g:racer_cmd = "/path/to/racer/bin"
"let $RUST_SRC_PATH= $HOME . "/src/rust/src"

" ----- LanguageClient ------
let g:LanguageClient_autoStart = 1
" \ 'ruby': ['solargraph', 'stdio'],
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'nightly', 'rls'],
    \ }
if executable('javascript-typescript-stdio')
  call extend(g:LanguageClient_serverCommands, {
    \ 'javascript': ['javascript-typescript-stdio'], 
    \ 'javascript.jsx': ['javascript-typescript-stdio']})
  " Use LanguageServer for omnifunc completion
  autocmd FileType javascript setlocal omnifunc=LanguageClient#complete
  autocmd FileType javascript.jsx setlocal omnifunc=LanguageClient#complete
endif

let g:deoplete#sources#rust#racer_binary='/Users/zoer/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/Users/zoer/src/rust/src'
let g:rustfmt_autosave = 1
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    let g:rust_clip_command = 'pbcopy'
  else 
    let g:rust_clip_command = 'xclip -selection clipboard'
  endif
endif

"---- lifepillar/pgsql.vim -----
let g:sql_type_default = 'pgsql'


for f in split(glob('~/.vim/custom/*.vim'), '\n')
  exe 'source' f
endfor

"---- javascript -----
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0' " This do disable full signature type on autocomplete
let g:tern#filetypes = [ 'jsx', 'javascript.jsx', 'vue', '...' ]


" w0rp/ale
highlight ALEWarningSign ctermbg=NONE
highlight ALEErrorSign ctermbg=NONE
highlight ALEWarning ctermbg=NONE
highlight ALEError ctermbg=NONE
let g:ale_fixers = {}
let g:ale_fix_on_save=1
" autocmd BufWritePost *.js,*.jsx ALEFix
nmap <silent> <leader>l <Plug>(ale_lint)

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

set ttimeoutlen=50

set number relativenumber

"avoid "hit enter" problems
set shortmess=a
set cmdheight=2

autocmd BufRead *.orig set readonly

"leave paste mode when leaving insert mode
autocmd InsertLeave * set nopaste

vmap <leader>s :sort<cr>

set guicursor=a:Cursor

ia cusotomer customer
ia cusotomers customers
ia cutsomers customers
ia cutsomer customer
ia cusotmer customer
ia cusotmers customers
