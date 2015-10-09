set nocompatible
filetype off
set scrolloff=5 "how many lines to keep on screen around the cursor when scrolling"
set hls "search highlight"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set showbreak=>>>
set nu
syntax on
set background=dark

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

colorscheme xoria256

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
    
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
endif

let g:ctrlp_working_path_mode = '0'

map <C-n> :NERDTreeToggle<CR>

set ic "set ignore case sensitivity when searching"

let g:ag_working_path_mode="r"


call plug#begin()
Plug 'kien/ctrlp.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'
Plug 'leafgarland/typescript-vim'
Plug 'scrooloose/syntastic'
call plug#end()
