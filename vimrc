" My currently working version Vimrc
" I kept all other settings in plugins/settings directory
"
" Xu Fei
" http://xfstart07.github.com
" xfstart07@gmail.com

runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
call pathogen#infect()
call pathogen#helptags()

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" select ALL
map <C-A> ggVG
