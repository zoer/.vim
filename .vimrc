set shell=/bin/bash
scriptencoding utf-8
set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim/
"let path='~/.vim/bundle'
"call vundle#begin(path)
call plug#begin('~/.vim/plugged')

Plug 'gmarik/Vundle.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'airblade/vim-gitgutter'
Plug 'L9'
Plug 'rstacruz/sparkup', {'rtp': 'vim'}
Plug 'mhinz/vim-startify'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'rking/ag.vim'
Plug 'ivalkeen/vim-simpledb'
Plug 'SQLUtilities'
Plug 'othree/html5.vim'
Plug 'godlygeek/tabular'

"Plug 'davidhalter/jedi-vim'
Plug 'Guardian'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

"themes
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/less.vim'
Plug 'gmarik/ingretu'

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'noprompt/vim-yardoc'
Plug 'thoughtbot/vim-rspec'
Plug 'bcaccinolo/rspec-vim-folding'
Plug 'vim-coffee-script'
Plug 'tpope/vim-git'
Plug 'tpope/vim-haml'
Plug 'timcharper/textile.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-liquid'
Plug 'tpope/vim-markdown'
Plug 'sunaku/vim-ruby-minitest'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mmalecki/vim-node.js'
Plug 'depuracao/vim-rdoc'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-scripts/scratch.vim'
Plug 'wesQ3/vim-windowswap'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Ruby
Plug 'jgdavey/vim-blockle'
Plug 'ngmy/vim-rubocop'

" Python
Plug 'nvie/vim-flake8'
Plug 'vim-autopep8'

" Go
Plug 'fatih/vim-go'

" Javascript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

Plug 'slim-template/vim-slim'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'itspriddle/ZoomWin'
" Plug 'vim-scripts/vimwiki'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'thinca/vim-visualstar'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
Plug 'tomtom/tlib_vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
Plug 'chrisbra/NrrwRgn'
Plug 'edsono/vim-matchit'
Plug 'michaeljsmith/vim-indent-object'
Plug 'mbbill/undotree'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'Lokaltog/vim-easymotion'
Plug 'ap/vim-css-color'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'Lokaltog/powerline', { 'branch': 'develop' }
Plug 'danro/rename.vim'
Plug 'lyokha/vim-xkbswitch'
Plug 'powerman/vim-plugin-ruscmd'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer --tern-completer' }

" Docker
Plug 'ekalinin/Dockerfile.vim'

" " All of your Plugins must be added before the following line
call plug#end()            " required
filetype plugin indent on    " required

" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plug stuff after this line

syntax enable
filetype plugin indent on

"map <C-n> :NERDTreeToggle<CR>
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

autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline

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
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 'et'
"let g:ctrlp_working_path_mode = 0
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
set listchars=tab:▹·,trail:~,extends:>,precedes:<,nbsp:%
set list

" Remove trailine spaces on save
autocmd BufWritePre * :%s/\s\+$//e

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
set laststatus=2

"Tabs
set splitbelow
set splitright

"Ruby
au BufNewFile,BufRead *.rxlsx set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead *.axlsx set filetype=ruby
au BufNewFile,BufRead Berksfile set filetype=ruby
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *.cap set filetype=ruby
let ruby_operators = 1

let g:blockle_mapping = "<leader>]"

"xkb-switch
let g:XkbSwitchEnabled       = 1
let g:XkbSwitchLib           = '/usr/lib64/libxkbswitch.so'
let g:XkbSwitchIMappings     = ['ru']
let g:XkbSwitchSkipIMappings = {'*' : ['[', ']', '{', '}', "'"]}

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
  set undodir='~/.undodir/'
  set undofile
endif
nnoremap U :UndotreeToggle<CR>

" Unite
let g:unite_enable_start_insert = 1
"let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 20
let g:unite_candidate_icon="* "
let g:unite_source_history_yank_enable = 1
let g:unite_split_rule = ""
nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<CR>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('file_rec/async','sorters','sorter_rank')
let g:unite_prompt='» '

" Jedi
let g:jedi#popup_select_first=0

" CTags
nmap <F8> :TagbarToggle<CR>

colorscheme my_monokai
set fillchars+=vert:\│

source $HOME/.vim/syntax.vim

for f in split(glob('~/.vim/langs/*.vim'), '\n')
  exe 'source' f
endfor

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline cursorcolumn
  au WinLeave * setlocal nocursorcolumn nocursorcolumn
augroup END

" mac
set guifont=Monaco:h15
set guioptions-=r

" print
:set printfont=Courier:h10
":%s/^/\=line('.')/
":'<,'>s/^/\=(line('.')-line("'<")+42)/
":'<,'>s/^/\=(line('.')-line("'<")+42).' --> '/

" ----- Align ---------------------

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=.*<CR>
  vmap <Leader>a= :Tabularize /=.*<CR>
  nmap <Leader>a{ :Tabularize /{.*<CR>
  vmap <Leader>a{ :Tabularize /{.*<CR>
  nmap <Leader>a: :Tabularize /:\zs.*<CR>
  vmap <Leader>a: :Tabularize /:\zs.*<CR>
endif

" ----- Search ---------------------

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  nnoremap <Leader>s :Ag<SPACE>
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

map <leader><Space> :noh<Enter>
