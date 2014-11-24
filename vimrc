" Vundle requires
set nocompatible        " be iMproved, required
filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'

Plugin 'vim-scripts/VisIncr'
Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'


" All of your Plugins must be added before the following line
call vundle#end()       " required

" Enable filetype and syntax
syntax on               " enable syntax
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins

" General Settings
set nocompatible        " not compatible with the old-fashion vi mode
set number              " show line number
set ruler               " show the cursor position all the time
set showtabline=2       " always show the tab line
set noshowmode          " do not show the vim mode because of lightline
set showcmd             " show the command at the bottom
set title               " set the terminal title
set bs=2                " allow backspacing over everything in insert mode
set scrolloff=5         " leave 5 lines around the cursor
set history=50          " keep 50 lines of command line history
set autoread            " auto read when file is changed from outside
set wildmenu            " turn on the wild menu
set noerrorbells        " turn off the error bell
set novisualbell        " turn off the visual bell

colorscheme smyck

" Indent settings
set shiftwidth=2        " indent size is 2
set softtabstop=2       " use 2 space to replace one tab
set tabstop=4           " tab size is 4
set expandtab           " use space to indent
set smartindent
set autoindent

" Search settings
set hlsearch            " highlight search item
set incsearch           " move the matched pattern while entering
set ignorecase          " ignore the case while searching

" File format and encodings
set fileformats=unix,dos,mac
set fileencodings=utf-8,big5
set termencoding=utf-8
set encoding=utf-8

" Display unwanted charactors
set list listchars=tab:_
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen ctermfg=white
call matchadd('ExtraWhitespace', '\s\+$')

" Swap and backup file
if has("win32")
  set directory=c:\\tmp,c:\\temp
  set backupdir=c:\\tmp,c:\\temp
elseif has("unix")
  set directory=/tmp
  set backupdir=/tmp
endif

" Key mapping
imap <C-k> <up>
imap <C-j> <down>
imap <C-h> <left>
imap <C-l> <right>
nnoremap  <C-k> Hjzz
nnoremap  <C-j> Lkzz
nnoremap  <C-n> :tabnew<CR>
nnoremap  <C-h> :tabprevious<CR>
nnoremap  <C-l> :tabnext<CR>
nnoremap  <C-c> :nohl<CR>
nnoremap ; :
vmap ; :
nnoremap <tab> v>
nnoremap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

" Ctrl-p: toggle the paste mode
"map <C-p> :set paste!<CR>

" Don't move on *
nnoremap * *<c-o>
" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv
" Easier to type, and I never use the default behavior.
nnoremap H ^
nnoremap L $

" Lightline
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'component': {
  \   'readonly': '%{&readonly?"x":""}',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '|', 'right': '|' }
  \ }

" Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args="--max-line-length=120"
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 0
let g:syntastic_cpp_include_dirs = [ '/usr/local/include' ]
let g:syntastic_cpp_compiler_options = '-std=c++0x'
let g:syntastic_cpp_compiler = 'clang++'

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 1
let g:ycm_key_list_select_completion = ['<c-tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-s-tab>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-Tab>'
let g:ycm_min_num_of_chars_for_completion = 1

" Ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" gitgutter
highlight clear SignColumn
let g:gitgutter_sign_column_always = 1
