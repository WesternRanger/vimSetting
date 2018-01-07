"--S-- set of Vundle ----
set nocompatible              " be iMproved, required
filetype on                  " required
filetype plugin on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'   " commenter: \cc \cu
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'posva/vim-vue'
Plugin 'othree/html5.vim'
Plugin 'alpertuna/vim-header'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'pangloss/vim-javascript'
Plugin 'kana/vim-fakeclip'
Plugin 'taq/vim-git-branch-info'
"Plugin 'marijnh/tern_for_vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'mattn/vim-terminal'
Plugin 'digitaltoad/vim-pug'
Plugin 'tpope/vim-pathogen'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
execute pathogen#infect()
syntax on
filetype plugin indent on

"--E-- set of Vundle ----
let g:syntastic_javsacript_checkers = ['eslint']
let g:syntastic_csslint_args="--ignore=outline-none"
let javascript_enable_domhtmlcss = 1
let g:ycm_semantic_triggers = {
			\'css': [ 're!^\s{4}', 're!:\s+'],
			\'html': [ '</' ],
			\}

"--S-- vue highlight ----
au BufRead,BufNewFile *.vue set filetype=html
"--E-- vue highlight ----

"--S-- AddHeader ----
let g:header_field_author = 'chenqi'
let g:header_field_author_email = 'western_ranger@icloud.com'
map <F4> :AddHeader<CR>
"--E-- AddHeader ----

"--S-- ack 全局文字搜索 ----
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:html5_event_handler_attributes_complete = 0 " Disable event-handler attributes
let g:html5_rdfa_attributes_complete = 0          " Disable RDFa attributes
let g:html5_microdata_attributes_complete = 0     " Disable microdata attributes
let g:html5_aria_attributes_complete = 0          " Disable WAI-ARIA attribute

"--S-- NERDTree ----
map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1
autocmd vimenter * NERDTree
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if(winnr("$")== 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeShowBookmarks=1
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"--E-- NERDTree ----




" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
syntax on " 语法高亮
endif
colorscheme ron " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下



"--S-- 默认配置 ----
set statusline=%#ErrorMsg#%{GitBranchInfoTokens()[0]}%#StatusLine#
set foldlevelstart=99
set foldmethod=indent
set background=dark
"set ignorecase " 搜索模式里忽略大小写
"set smartcase " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
set tabstop=4 " 设置制表符(tab键)的宽度
set expandtab
set autowrite " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
"set smartindent " 智能对齐方式
set softtabstop=4 " 设置软制表符的宽度
set shiftwidth=4 " (自动) 缩进使用的4个空格
set cindent " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式
set backspace=2 "设置退格键可用
set showmatch " 设置匹配模式，显示匹配的括号
set linebreak " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
"set hidden " Hide buffers when they are abandoned
set mouse=a " Enable mouse usage (all modes) "使用鼠标
set number " Enable line number "显示行号
"set previewwindow " 标识预览窗口
set history=50 " set command history to 50 "历史记录50条
set noswapfile "取消交换文件
"--状态行设置--
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。
"--命令行设置--
set showcmd " 命令行显示输入的命令
set showmode " 命令行显示vim当前模式
"--find setting--
set incsearch " 输入字符串就显示匹配点
set hlsearch
" 使用F1切换paste模式
set pastetoggle=<F1>
set autowriteall


"--E-- 默认配置 ----
autocmd BufWritePost ~/.vimrc source ~/.vimrc  
imap jk <Esc>
"let mapleader = "\<Space>"
" Bash like keys for the command line

" Ctrl-a: Go to begin of line
inoremap <C-a> <Home>

" Ctrl-e: Go to end of line
inoremap <C-e> <End>

" Ctrl-[bf]: Move cursor left/right
inoremap <C-h> <Left>
inoremap <C-l> <Right>

map <C-Z> u
inoremap <C-Z> <Esc>u
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
