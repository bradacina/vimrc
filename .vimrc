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

source $VIMRUNTIME/macros/matchit.vim

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
    
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
endif

let g:ctrlp_working_path_mode = '0'

map <C-n> :NERDTreeToggle<CR>

set ic "set ignore case sensitivity when searching"

"uncomment next line to make ag search from current project path instead of
"CWD
"let g:ag_working_path_mode="r"

let g:ag_highlight = 1

let g:typescript_indent_disable = 1
autocmd QuickFixCmdPost [^l]* nested cwindow
"autocmd QuickFixCmdPost    l* nested lwindow
let g:typescript_compile_by_tsconfig = 1

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
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe'
call plug#end()

let mapleader=" "
nnoremap <leader>ty :YcmCompleter GetType<CR>
nnoremap <leader>de :YcmCompleter GoToDefinition<CR>
nnoremap <leader>do :YcmCompleter GetDoc<CR>
nnoremap <leader>re :YcmCompleter GoToReferences<CR>
