set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim'}

Plugin 'Guardian'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'

"themeS
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'

Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'skwp/vim-rspec'
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

" colors Monokai
syntax enable
filetype plugin indent on

"map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
" nmap <Plug>ZoomWin
map <C-w>z <Plug>ZoomWin


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

