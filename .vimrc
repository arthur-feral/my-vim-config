set nocompatible
" filetype off

syntax on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'mhinz/vim-signify'
Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup'
Plugin 'vim-scripts/tComment'
Plugin 'MarcWeber/vim-addon-manager'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'

"color schemes
Plugin 'sjl/badwolf'

call vundle#end()
filetype plugin indent on

set t_Co=256
set term=xterm-256color

" syntax enable
colorscheme mustang
" colorscheme badwolf

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
execute pathogen#helptags()
execute pathogen#infect()

" change the mapleader from \ to ,
let mapleader=","

set hidden
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
"set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set expandtab
set showcmd
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set cursorline

"hi CursorLine   cterm=NONE ctermbg=Grey40 ctermfg=NONE
hi CursorLine term=NONE cterm=NONE guibg=Grey40

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

filetype plugin indent on

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
" assuming you want to use snipmate snippet engine
"ActivateAddons vim-snippets snipmate
map <leader>c <c-_><c-_>
map <leader>t :NERDTreeToggle<CR>

"once u add another plugin on vimrc file with vim,
"it just update vim with new plugins
map <leader>u :so ~/.vimrc<CR> :VundleInstall<CR>

