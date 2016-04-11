set nocompatible
set t_Co=256
colorscheme mustang

if &t_Co >= 256 || has("gui_running")
    colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
	" switch syntax highlighting on, when the terminal has colors
	 syntax on
endif

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

