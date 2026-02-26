" --- General UI ---
syntax on                   " Enable syntax highlighting
set relativenumber                  " Show line numbers (or use set relativenumber)
set ruler                   " Show cursor position in the status line
" set visualbell              " Use a visual flash instead of an audible bell
set showmode                " Show current mode in the status line
set ruler
let &t_EI = "\033[2 q" " NORMAL  █
let &t_SI = "\033[5 q" " INSERT  |
set clipboard=unnamedplus

" Command line completion options
set showcmd
set wildmenu

" --- Searching ---
set incsearch               " Highlight matches as you type
set hlsearch                " Highlight all search matches
set ignorecase              " Make searches case-insensitive
set smartcase               " Make searches case-sensitive if an uppercase letter is used

" --- Tabs & Indentation ---
set expandtab               " Use spaces instead of tabs
set tabstop=2               " A tab is 4 spaces wide
set shiftwidth=2            " Auto-indent size is 4 spaces
set softtabstop=2          " Backspace deletes 4 spaces at once
set autoindent              " Copy indent from current line when starting a new line
set smartindent             " Smarter auto-indenting for code blocks
set noshiftround            " indenting a line will move it by an exact multiple of shiftwidth value

" --- Navigation & Buffers ---
set hidden                  " Allow switching buffers without saving
set scrolloff=3             " Keep 3 lines of context above/below the cursor
set mouse=a                 " Enable mouse support in all modes

" Don't exit visual mode after indenting
vnoremap > >gv
vnoremap < <gv
" Autocomplete brackets and quotation marks
inoremap ( ()<ESC>hli
inoremap { {}<ESC>hli
inoremap [ []<ESC>hli
inoremap ' ''<ESC>hli
inoremap " ""<ESC>hli
inoremap ` ``<ESC>hli
