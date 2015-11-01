set shell=/bin/bash
scriptencoding utf-8
set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
let path='~/.vim/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}
Plugin 'mhinz/vim-startify'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'rking/ag.vim'
Plugin 'ivalkeen/vim-simpledb'
Plugin 'SQLUtilities'
Plugin 'othree/html5.vim'
Plugin 'godlygeek/tabular'

"Plugin 'davidhalter/jedi-vim'
Plugin 'Guardian'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

"themes
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/less.vim'
Plugin 'gmarik/ingretu'

Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'noprompt/vim-yardoc'
Plugin 'thoughtbot/vim-rspec'
Plugin 'bcaccinolo/rspec-vim-folding'
Plugin 'vim-coffee-script'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-haml'
Plugin 'timcharper/textile.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-markdown'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mmalecki/vim-node.js'
Plugin 'depuracao/vim-rdoc'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-scripts/scratch.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Ruby
Plugin 'jgdavey/vim-blockle'
Plugin 'ngmy/vim-rubocop'

" Python
Plugin 'nvie/vim-flake8'
Plugin 'vim-autopep8'

" Go
Plugin 'fatih/vim-go'

Plugin 'slim-template/vim-slim.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'itspriddle/ZoomWin'
" Plugin 'vim-scripts/vimwiki'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'thinca/vim-visualstar'
Plugin 'tpope/vim-unimpaired'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tlib_vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-repeat'
Plugin 'chrisbra/NrrwRgn'
Plugin 'edsono/vim-matchit'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'mbbill/undotree'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-endwise'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ap/vim-css-color'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'Lokaltog/powerline'
Plugin 'danro/rename.vim'
Plugin 'lyokha/vim-xkbswitch'
Plugin 'powerman/vim-plugin-ruscmd'

" Docker
Plugin 'ekalinin/Dockerfile.vim'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
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
" " Put your non-Plugin stuff after this line

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
noremap ;w :w<CR>
inoremap ;w <ESC>:w<CR>

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
endif

nnoremap <Leader>\ :Ag<SPACE>
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
