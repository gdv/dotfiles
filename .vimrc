set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'dbeniamine/vim-mail'
Plugin 'chrisbra/CheckAttach'
Plugin 'altercation/vim-colors-solarized'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

:syntax on

" change the mapleader from \ to ,
let mapleader=","
let maplocalleader=","
set timeoutlen=300

set hidden

set tabstop=4     " a tab is four spaces
set expandtab     " transform tabs into spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set nobackup
set noswapfile

set laststatus=2
"let g:airline_theme='powerlineish'

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>

set clipboard=unnamed


set textwidth=72
set wrap
set linebreak

set noautoindent
set ruler
set encoding=utf-8

let g:VimMailDoNotFold=1
let g:VimSpellLangs=['en', 'it']
let g:checkattach_filebrowser = 'ranger'
map <F12> :AttachFile<CR>
inoremap <F12> <Esc>:AttachFile<CR>

set background=dark
colorscheme delek
set formatoptions=tq
set formatoptions+=a
set clipboard=unnamed

let g:attach_check_keywords ='attach,attached,attaching,allego,allegato,allegati'
