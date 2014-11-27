set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
let path='~/.vim/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}

Plugin 'Guardian'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'

"themes
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'thoughtbot/vim-rspec'
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

" Python
Plugin 'nvie/vim-flake8'
Plugin 'vim-autopep8'

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
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-endwise'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'ap/vim-css-color'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'Lokaltog/powerline'
Plugin 'rosenfeld/conque-term'
Plugin 'danro/rename.vim'
Plugin 'lyokha/vim-xkbswitch'

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
try
  colorscheme Monokai
catch /^Vim\%((\a\+)\)\=:E185/
endtry

syntax enable
filetype plugin indent on

"map <C-n> :NERDTreeToggle<CR>
map ,n :NERDTreeToggle<CR>
map ,m :NERDTreeFind<CR>
"map <C-S-O> :CtrlPBuffer<CR>
let NERDTreeIgnore = ['\.swp$','\.swo$']

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

inoremap jj <ESC>
nmap <c-s-t> :vs#<CR>

"TABs
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
"set expandtab

" Show whitespaces and tabs
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$\|\t/
set listchars=tab:>-,trail:~,extends:>,precedes:<
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

set nowrap

"Change comments color
hi Comment ctermfg=3

"Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

"Tabs
set splitbelow
set splitright

"File types
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *.cap set filetype=ruby

let g:blockle_mapping = "<leader>]"

"xkb-switch
let g:XkbSwitchEnabled       = 1
let g:XkbSwitchLib           = '/usr/lib64/libxkbswitch.so'
let g:XkbSwitchIMappings     = ['ru']
let g:XkbSwitchSkipIMappings = {'*' : ['[', ']', '{', '}', "'"]}

" :focus
noremap <leader>rf :%s/,\s*:focus//g<CR>
" debugger
noremap <leader>rd :%s/\s*debugger\s*\n//g<CR>

" buffergator
let g:buffergator_sort_regime = "basename"
let g:buffergator_viewport_split_policy = "R"

" save folding
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" json
nmap =j :%!python -m json.tool<CR>

" gitgutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" 80 characters per line
set textwidth=80
set colorcolumn=+1
