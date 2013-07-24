ret nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Align'
Bundle 'lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'mrtazz/molokai.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-rails'
Bundle 'hallison/vim-markdown'
Bundle 'xfstart07/snipmate.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'motemen/git-vim'

" My Setting

" 高亮
syntax on
" 搜索高亮
set hlsearch
" 增值搜索高亮
set incsearch
syntax enable

" color theme
try
  colorscheme molokai
catch
endtry

set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
set linebreak
set nobackup
set noswapfile
set nowritebackup
set ignorecase
set copyindent

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

" 行号
set number
set numberwidth=4

" 缩进
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set smartcase

" 鼠标模式
set mouse=a

" 编码
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

filetype plugin indent on

" KeyBoard

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file

let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Cut and Copy and Stick
map <C-x> dd
map <C-c> y
map <C-v> p


" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" select ALL
map <C-A> ggVG

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" next and prev tab
noremap <F7> gT
noremap <F8> gt

" Powerline
set laststatus=2
set t_Co=256
set encoding=utf-8
let g:Powerline_symbols = 'fancy'

" NERDTree
nnoremap <silent> <F2> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=0
let NERDTreeChDirMode=2
let NERDTreeMouseMode=2
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_gui_startup=0
" open directory of current opened file
map <leader>r :NERDTreeFind<cr>

" make nerdtree look nice
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let g:NERDTreeWinSize=30

" ZenCoding
let g:user_zen_expandabbr_key = '<c-y>'
let g:use_zen_complete_tag = 1

" git-vim
map <leader>ga :GitAdd<cr>
map <Leader>gb :GitBlame<cr>
map <Leader>gc :GitCommit<cr>
map <Leader>gv :GitDiff<cr>
map <Leader>gl :GitLog<cr>
map <Leader>gs :GitStatus<cr>

