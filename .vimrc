
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
set smartcase "设置智能大小写
set incsearch "设置增量查找(查询预览) 

" zi 全局打开/关闭折叠
" zo/zc 打开/关闭折叠
" zR/zM 打开/关闭所有嵌套折叠
set foldmethod=manual "手动折叠
set hidden "允许未保存的情况下切换其他缓冲区
set laststatus=2

set ruler

set history=200

filetype plugin indent on

set foldlevelstart=0

set noundofile
set nobackup
set noswapfile

"设置字体和编码
set guifont=DroidSansMono_Nerd_Font:h11
set encoding=utf8

set linespace=4

"let ctrl-w,ctrl-h,ctrl-u can use in insert mode 
set backspace=indent,eol,start

"set god complete
set nocompatible
filetype plugin on
"开启html标签跳转
runtime macros/matchit.vim

"set theme
"syntax enable
"set background=black
colorscheme desert
"solarized

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
cnoremap <up> <nop>
cnoremap <down> <nop>
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
inoremap <leader><leader> <c-j><esc>O
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
" vim-plug安装命令:curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
Plug 'mattn/emmet-vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
"Plug 'Lokaltog/vim-powerline'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'Chiel92/vim-autoformat'
Plug 'bronson/vim-visual-star-search'
Plug 'cakebaker/scss-syntax.vim'
Plug 'vim-syntastic/syntastic'
Plug 'ryanoasis/vim-devicons' "美化目录
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "美化目录
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_disable_startup_warning = 1 "自动补全的vim版本警告



Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'Raimondi/delimitMate'
Plug 'gko/vim-coloresque'
Plug 'rhysd/vim-gfm-syntax'
" sudo npm -g install instant-markdown-d
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
let NERDTreeShowHidden=1 "默认显示书签栏
let NERDTreeShowBookmarks=1 "默认显示隐藏文件
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

let g:syntastic_html_checkers = ['htmlhint','jshint'] "html中的样式没检查
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_sass_checkers = ['sass']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_json_checkers = ['jsonlint']

"nerdcommenter
"# <leader>cc // 注释当前行
"# <leader>cs /* 块注释 */
"# <leader>cA 在行尾添加注释//
"# <leader>cu 取消注释

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
"}}}

" 自动保存折叠
au BufWinLeave * silent mkview
au BufWinEnter * silent loadview


" scss自动补全 
autocmd FileType scss setl iskeyword+=@-@

" {{{
"vue 
nnoremap <F6> :!npm run serve<cr>
nnoremap <F7> :!npm run build<cr>
" }}}"
