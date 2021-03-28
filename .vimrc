" vim-plug安装命令:curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 基本配置{{{
set number

set cursorline

set cursorcolumn

set hlsearch

set showmatch

set nrformats=  "c-a,c-x在0开头的数字加减以十进制操作
set tabstop=2 
set shiftwidth=2 
set autoindent 

set hidden "允许未保存的情况下切换其他缓冲区
set laststatus=2

set ruler

set history=200

filetype plugin indent on

set foldlevelstart=0

set noundofile
set nobackup
set noswapfile

set guifont=Andale\ Mono\ 16

set linespace=4

"let ctrl-w,ctrl-h,ctrl-u can use in insert mode 
set backspace=indent,eol,start

"set god complete
set nocompatible
filetype plugin on

"set theme
syntax enable
set background=dark
colorscheme solarized

"spell local check
setlocal spelllang=en_us
setlocal spellfile=~/.vim/spell/en.utf-8.add
setlocal spellfile+=~/.vim/spell/myOthers.add

"change spell color
hi SpellBad cterm=underline ctermfg=009
"}}}	


"  清除坏习惯{{{
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <backspace> <nop>
cnoremap <backspace> <nop>
inoremap <backspace> <nop>
"}}}

"mapleader localmapleader{{{
let mapleader = ","
let localmapleader = "\\"
nnoremap \ ,
"}}}

" 自定义映射{{{
"  _
nnoremap _ :.mov .-2<cr>
"  -
nnoremap - :.mov .+1<cr>
"nnoremap <c-u> gUawe
inoremap jj <esc>i
inoremap kk <esc>la
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <silent> [b :bprevious <cr>
nnoremap <silent> ]b :bnext <cr>
nnoremap <silent> [B :bfirst <cr>
nnoremap <silent> ]B :blast <cr>
nnoremap <silent> <leader>w :.move .-2<cr>
nnoremap <silent> <leader>s :.move .+1<cr>
nnoremap <silent> <F3> :!ctags -R<cr>
nnoremap <silent> <c-l> :<c-u>nohlsearch<cr><c-l>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>
" %% behalf persent dir
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
"}}}

"abbreviations {{{
iabbrev c++ #include <cstdio><cr>#include <algorithm><cr>#include <vector><cr>using namespace std;<cr>int main()<cr>{<cr>}
iabbrev mfor for(int i = 0;i<n;i++){}
iabbrev msf scanf("%d",&n);
iabbrev mpf printf("%d",n);
"}}}

" {{{
"custom state line
"set statusline=filename:\ %f
"set statusline+=%=
"set statusline+=%l
"set statusline+=/
"set statusline+=%L
"set statusline+=\ curr/sum
"}}}


" {{{
"vim-plug

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
Plug 'mattn/emmet-vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'Lokaltog/vim-powerline'
Plug 'altercation/vim-colors-solarized'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'Chiel92/vim-autoformat'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-syntastic/syntastic'

Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'Raimondi/delimitMate'
Plug 'gko/vim-coloresque'
Plug 'rhysd/vim-gfm-syntax'
Plug 'instant-markdown/vim-instant-markdown'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/webapi-vim'
Plug 'HerringtonDarkholme/yats.vim' 
call plug#end()



"NERDTreeToggle
nnoremap <F3> :NERDTreeToggle<cr>
"autoformat 需要全局安装js-beautify npm install -g js-beautify 和 设置全局格式化路径astyle来格式化c++
let g:formatterpath = ['/home/yang/CppStyle/astyle']
nnoremap <F4> :Autoformat<cr>
"ctags
nnoremap <F5> :!ctags -R<cr>
"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"}}}

" {{{
"vue 
nnoremap <F6> :!npm run serve<cr>
nnoremap <F7> :!npm run build<cr>
" }}}"
