set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle manage bundle
" required!
Bundle 'gmarik/vundle'

" install: BundleInstall 
"
" original repos on github

" ctrl + p
Bundle 'kien/ctrlp.vim'

Bundle 'scrooloose/nerdtree'

Bundle 'Zenburn'

Bundle 'mileszs/ack.vim'
Bundle 'mattn/emmet-vim'

" Dash
Bundle 'rizzatti/dash.vim'

" Markdown
" :TableFormat
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'

Bundle 'kchmck/vim-coffee-script'
Bundle 'The-NERD-Commenter'
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'

" rails
Bundle 'tpope/vim-rails'

" auto completion
Bundle 'Shougo/neocomplcache.vim'

" snipmate snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'

" optional snippets
Bundle 'honza/vim-snippets'

" My Setting

set helplang=cn

" 高亮
syntax on
" 搜索高亮
set hlsearch
" 增值搜索高亮
set incsearch
syntax enable

" color theme
try
  colorscheme zenburn 
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
"set numberwidth=4

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

" set clipboard=unnamed
if $TMUX == ''
  set clipboard+=unnamed
endif

" set paste
nnoremap <F4>set invpaste paste?<CR>
imap <F4> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F4>

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

" line color
set laststatus=2
set t_Co=256
set encoding=utf-8

" airline
let g:airline_theme = 'dark'
let g:airline_enable_branch=1
let g:airline_detect_paste=1
let g:airline_enable_syntastic=1

set ttimeoutlen=50

" Tagbar
"nnoremap <silent> <F3> :TagbarToggle<CR>

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

let Tlist_WinWidth=40
let Tlist_GainFocus_On_ToggleOpen=1
map <F5> :TlistToggle<cr>
set tags+=./tags;/
set tags+=gems.tags

" neo config
let g:neocomplcache_enable_at_startup = 1

" ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" emmet
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

