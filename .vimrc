" vim-plug安装命令:curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 基本配置{{{
set number

set cursorline

set cursorcolumn

set foldmethod=manual

set showmatch

set nrformats=  "c-a,c-x在0开头的数字加减以十进制操作
set tabstop=2 
set shiftwidth=2 
set autoindent 

set hidden
set laststatus=2

set ruler

set history=200

filetype plugin indent on

set foldlevelstart=0

set noundofile
set nobackup
set noswapfile

set guifont=Consolas:h18

"set theme
syntax enable
set background=dark
colorscheme solarized
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
nnoremap <c-u> gUawe
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
" ctags
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
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'kien/ctrlp.vim'
Plug 'Shougo/neocomplcache.vim'
Plug 'tpope/vim-commentary'
Plug 'Lokaltog/vim-powerline'
Plug 'altercation/vim-colors-solarized'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
call plug#end()


"NERDTreeToggle
nnoremap <F3> :NERDTreeToggle<cr>
" neocomplcache 
let g:neocomplcache_enable_at_startup = 1  
let g:neocomplcache_enable_auto_select = 1 
"}}}

" {{{
"c++.
nnoremap <F5> :!g++ % -o %:r<cr>
nnoremap <F6> :!./%:r <input.txt> output.txt<cr>
"vueg++
nnoremap <F7> :!npm run serve<cr>
nnoremap <F8> :!npm run build<cr>
" }}}"
