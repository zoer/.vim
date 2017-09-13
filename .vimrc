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
"Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'
"Plug 'L9' "???
Plug 'mhinz/vim-startify'
"Plug 'Shougo/unite.vim'
"Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'godlygeek/tabular'
Plug 'rking/ag.vim'

" SQL
Plug 'ivalkeen/vim-simpledb'
Plug 'lifepillar/pgsql.vim'
"Plug 'SQLUtilities' " form SQL

"html
Plug 'rstacruz/sparkup', {'rtp': 'vim'}
Plug 'othree/html5.vim'
Plug 'alvan/vim-closetag'
"Plug 'Guardian'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'

"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils' "required by vim-snipmate
Plug 'tomtom/tlib_vim' "required by vim-snipmate

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Plug 'davidhalter/jedi-vim'

" navigation
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'szw/vim-tags'

"themes
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/less.vim'
Plug 'gmarik/ingretu'

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'noprompt/vim-yardoc'
Plug 'thoughtbot/vim-rspec'
Plug 'bcaccinolo/rspec-vim-folding'
Plug 'tpope/vim-git'
Plug 'tpope/vim-liquid'
Plug 'sunaku/vim-ruby-minitest'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mmalecki/vim-node.js'
Plug 'depuracao/vim-rdoc'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-scripts/scratch.vim'
Plug 'wesQ3/vim-windowswap'

" Tepmlate engines
"Plug 'vim-coffee-script'
Plug 'tpope/vim-haml'
Plug 'timcharper/textile.vim'
Plug 'tpope/vim-markdown'
Plug 'slim-template/vim-slim'
Plug 'digitaltoad/vim-pug'
Plug 'cespare/vim-toml'

" Ruby
Plug 'jgdavey/vim-blockle'
Plug 'ngmy/vim-rubocop'

" Python
Plug 'nvie/vim-flake8'
"Plug 'vim-autopep8'

" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': 'gocode close && ~/.vim/plugged/gocode/nvim/symlink.sh' }

" C
Plug 'zchee/deoplete-clang'

" Javascript
Plug 'leafgarland/typescript-vim'
" Plug 'Quramy/tsuquyomi' " ts

" CSV
Plug 'chrisbra/csv.vim'

Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'itspriddle/ZoomWin'
" Plug 'vim-scripts/vimwiki'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-unimpaired'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
"Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
"Plug 'chrisbra/NrrwRgn'
Plug 'michaeljsmith/vim-indent-object'
Plug 'mbbill/undotree'
" Plug 'tpope/vim-eunuch' " unix commands helper
Plug 'ap/vim-css-color'
"Plug 'jeetsukumaran/vim-buffergator'
Plug 'Lokaltog/powerline', { 'branch': 'develop' }
Plug 'danro/rename.vim'
"Plug 'lyokha/vim-xkbswitch'
Plug 'powerman/vim-plugin-ruscmd'

" pairs
"Plug 'cohama/lexima.vim' conflicting with UltiSnippets see https://github.com/cohama/lexima.vim/issues/32
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" " All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

syntax enable
filetype plugin indent on

"map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
map ,n :NERDTreeToggle<CR>
map ,m :NERDTreeFind<CR>
"map <C-S-O> :CtrlPBuffer<CR>
let NERDTreeIgnore = ['\.swp$','\.swo$','\.pyc$']
let g:NERDTreeWinSize = 40

set switchbuf=useopen,usetab

" nmap <Plug>ZoomWin
map <C-w>z <Plug>ZoomWin
map <ESC><ESC> <nop>

" quick save
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
inoremap <leader>w <ESC>:w<CR>

" slow motion
"autocmd WinEnter * set cursorline
"autocmd WinLeave * set nocursorline

noremap <A-j> :m+<CR>
noremap <A-k> :m-2<CR>
inoremap <A-j> :m+<CR>
inoremap <A-k> :m-2<CR>
vnoremap <A-j> :m+<CR>
vnoremap <A-k> :m-2<CR>

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
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_use_caching = 1
let g:ctrlp_open_new_file = 'et'

inoremap jj <ESC>
nmap <c-s-t> :vs#<CR>

"TABs
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab

" Show trailing whitespaces
highlight ExtraWhitespace ctermbg=NONE guibg=NONE
match ExtraWhitespace /\s\+$/

"match ExtraWhitespace /\s\+$\|\t/
"·
set listchars=tab:▹\ ,trail:~,extends:>,precedes:<,nbsp:%
set list

" Remove trailine spaces on save
autocmd BufWritePre *.c,*.vue,*.sql,*.rb,*.py,*.md,*.go,*.yml,*.coffee,*.js,*.rxlsx,*.erb,*.haml,*.slim :%s/\s\+$//e

set nu
set nuw=4
"autocmd InsertEnter * set rnu
"autocmd InsertLeave * set rnu

map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

set showcmd

"ConqueTerm
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_SessionSupport = 1
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CWInsert = 1

"Multi-cursors
let g:multi_cursor_exit_from_insert_mode = 0

set nocursorline
set nowrap

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '||'
set laststatus=2

"Tabs
set splitbelow
set splitright

" ----- Go -------------------

au FileType go nmap <leader>rt <Plug>(go-run-tab)
au FileType go nmap <leader>rs <Plug>(go-run-split)
au FileType go nmap <leader>rv <Plug>(go-run-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
" let g:go_bin_path = '/usr/local/bin'

" ----- Ruby -------------------
au BufNewFile,BufRead *.rxlsx set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead *.axlsx set filetype=ruby
au BufNewFile,BufRead Berksfile set filetype=ruby
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *.cap set filetype=ruby
au FileType ruby map <buffer> <leader>r :Runcmd ruby %<cr>

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

"xkb-switch
"let g:XkbSwitchEnabled       = 1
"let g:XkbSwitchLib           = '/usr/lib64/libxkbswitch.so'
"let g:XkbSwitchIMappings     = ['ru']
"let g:XkbSwitchSkipIMappings = {'*' : ['[', ']', '{', '}', "'"]}

set incsearch

" :focus
noremap <leader>rf :%s/,\s*:focus//g<CR>
" debugger
noremap <leader>rd :%s/\s*debugger\s*\n//g<CR>

" buffergator
let g:buffergator_sort_regime = "basename"
let g:buffergator_viewport_split_policy = "R"

" vimdiff
noremap <leader>d2 :diffget //2<CR>
noremap <leader>d3 :diffget //3<CR>
noremap <leader>dw :Gwrite!<CR>
noremap <leader>du :diffupdate<CR>

" save folding
"au BufWinLeave ?* mkview
"au BufWinEnter ?* silent loadview

" json
nmap =j :%!python -m json.tool<CR>
" need to fix
"nmap =j :%!python -c 'import sys,json;data=json.loads(sys.stdin.read()); print(json.dumps(data, sort_keys=True,indent=2, separators=(",", ": ")))'<CR>

" xml
nmap =x :%!python -c 'import xml.dom.minidom,sys; data=sys.stdin.read(); xml = xml.dom.minidom.parseString(data);print(xml.toprettyxml());'<CR>

" gitgutter
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

" Unite
"let g:unite_enable_start_insert = 1
""let g:unite_split_rule = "botright"
"let g:unite_force_overwrite_statusline = 0
"let g:unite_winheight = 20
"let g:unite_candidate_icon="* "
"let g:unite_source_history_yank_enable = 1
"let g:unite_split_rule = ""
"nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<CR>
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"call unite#filters#sorter_default#use(['sorter_rank'])
"call unite#custom#source('file_rec/async','sorters','sorter_rank')
"let g:unite_prompt='» '

" Jedi
let g:jedi#popup_select_first=0

" CTags
nmap <F8> :TagbarToggle<CR>
let g:rails_ctags_arguments=['--languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)']

colorscheme my_monokai
set fillchars+=vert:\│

source $HOME/.vim/syntax.vim

for f in split(glob('~/.vim/langs/*.vim'), '\n')
  exe 'source' f
endfor

" slow motion :(
"""augroup CursorLine
"""  au!
"""  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
"""  au WinLeave * setlocal nocursorcolumn nocursorcolumn
"""augroup END

" mac
set guifont=Monaco:h15
set guioptions-=r

" print
:set printfont=Courier:h10
":%s/^/\=line('.')/
":'<,'>s/^/\=(line('.')-line("'<")+42)/
":'<,'>s/^/\=(line('.')-line("'<")+42).' --> '/

" ----- Align ---------------------

nmap <Leader>a= :Tabularize /=.*<CR>
vmap <Leader>a= :Tabularize /=.*<CR>
nmap <Leader>a{ :Tabularize /{.*<CR>
vmap <Leader>a{ :Tabularize /{.*<CR>
nmap <Leader>a: :Tabularize /:\zs.*<CR>
vmap <Leader>a: :Tabularize /:\zs.*<CR>

" ----- Search ---------------------

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 0

  nnoremap <Leader>s :Ag<SPACE>
endif

"nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

map <leader><Space> :noh<Enter>

" ----- Snippets ---------------------
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.vim/snippets"
let g:UltiSnipsSnippetDirectories=["~/.vim/snippets", "UltiSnips"]

" make UltiSnippets works with YCM/deoplete
let g:UltiSnipsExpandTrigger = "<nop>"
let g:ulti_expand_or_jump_res = 0
function! ExpandSnippetOrCarriageReturn()
  let snippet = UltiSnips#ExpandSnippetOrJump()
  if g:ulti_expand_or_jump_res > 0
    return snippet
  else
    return "\<CR>"
  endif
endfunction
let g:endwise_no_mappings = 1
inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>\<C-R>=EndwiseDiscretionary()\<CR>"

" ----- Move lines ----------------------
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" ----- Gist -------------------
" If you want to show your private gists with ":Gist -l"
let g:gist_show_privates = 1
" If you want your gist to be private by default
let g:gist_post_private = 1

" ----- local .vimrc ----------
set exrc
set secure

" vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.vue"

" ---------------------------
" Save on GoBuild
set autowrite

" --- Completion Popup
:highlight Pmenu ctermbg=238 gui=bold

" --- Save with sudo
cmap w!! w !sudo tee > /dev/null %


" ----- deoplete --------------
let g:deoplete#enable_at_startup = 1

"let g:python3_host_prog = "/Users/zoer/.pyenv/versions/3.5.2/bin/python"
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/4.0.0/lib/clang'
let g:deoplete#sources#clang#libclang_path = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
let g:neoinclude#_paths = '/usr/local/Cellar/postgresql/9.5.5/include/server/'

" ----- fzf -------------------
noremap <leader><tab> :Files<CR>

" ----- nerdcommenter ---------
let NERDSpaceDelims=1

" ----- mxw/vim-jsx -----------
let g:jsx_ext_required = 0

" ----- wrap <tab> key --------
function! TabWrap()
    if pumvisible()
        return "\<C-N>"
    elseif strpart( getline('.'), 0, col('.') - 1 ) =~ '^\s*$'
        return "\<tab>"
    elseif &omnifunc !~ ''
        return "\<C-X>\<C-O>"
    else
        return "\<C-N>"
    endif
endfunction

"---- lifepillar/pgsql.vim -----
let g:sql_type_default = 'pgsql'

inoremap <silent><expr><tab> TabWrap()

source $HOME/.vim/custom/uuid.vim
