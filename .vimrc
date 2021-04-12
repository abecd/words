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
cnoremap <cr> <nop>
nnoremap <cr> <nop>
inoremap <cr> <nop>
nnoremap <backspace> <nop>
cnoremap <backspace> <nop>
inoremap <backspace> <nop>
"}}}

"mapleader localmapleader{{{
let mapleader = ","
let localmapleader = "\\"
nnoremap \ ,
"}}}

" 自定义映射{{{"set theme
"syntax enable
"set background=black
colorscheme desert
"solarized
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
nnoremap <silent> <c-l> :<c-u>nohlsearch<cr><c-l>
cnoremap <c-p> <Up>
cnoremap <c-n> <Down>
" %% behalf persent dir
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
"}}}


" {{{
"vim-plug
" vim-plug安装命令:curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
" sudo npm -g install instant-markdown-d
Plug 'instant-markdown/vim-instant-markdown'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'}
Plug 'mattn/emmet-vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'alvan/vim-closetag'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-visual-star-search'
Plug 'ryanoasis/vim-devicons' "美化目录
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "美化目录
Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/vim-auto-save'
Plug 'kana/vim-textobj-user' "vim-textobj-entire使用的前提
Plug 'kana/vim-textobj-entire'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'mxw/vim-jsx'
Plug 'rhysd/vim-gfm-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()



"NERDTreeToggle
nnoremap <F3> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1 "默认显示书签栏
let NERDTreeShowBookmarks=1 "默认显示隐藏文件

"autoformat 需要全局安装js-beautify npm install -g js-beautify 和 设置全局格式化路径astyle来格式化c++
let g:formatterpath = ['/home/yang/CppStyle/astyle']
nnoremap <F4> :Autoformat<cr>


"nerdcommenter 注释
"# <leader>cc // 注释当前行
"# <leader>cs /* 块注释 */
"# <leader>cA 在行尾添加注释//
"# <leader>cu 取消注释

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

let g:coc_disable_startup_warning = 1 "关闭自动补全的vim版本警告
"}}}
 
" auto-save 自动保存
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

"coc-vim 代码补全

let g:coc_global_extensions = ['coc-json','coc-vimlsp','coc-snippets','coc-html','coc-css','coc-clangd','coc-tsserver']

set updatetime=100
set shortmess+=c

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>

" ultisnips
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" {{{
"vue 
nnoremap <F6> :!npm run serve<cr>
nnoremap <F7> :!npm run build<cr>
" }}}"
