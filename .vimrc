set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'guns/xterm-color-table.vim'

" Indentation rules
filetype plugin indent on

"Pathogen
execute pathogen#infect()

" Syntax highlighting
syntax enable

" If using a dark background within the editing area and syntax
" highlighting turn on this option as well
set background=dark

" Set color scheme
colorscheme solarized

" Dimensions
set textwidth=80      " Virtual line width
set colorcolumn=81    " Vertical ruler at 81 characters

" Information
set showcmd           " Show (partial) command in status line.
set showmode          " Show the current mode
set laststatus=2      " always show status line

" Statusline
set statusline=%F
set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}
" set statusline+=%{StatuslineCurrentHighlight()}
set statusline+=%=
set statusline+=%m
set statusline+=\ %Y
set statusline+=\ %3l/%L[%3p%%]

" Navigation
set nu                " Set line numbering
set scrolloff=5       " keep at least 5 lines above/below
set mouse=a           " Enable mouse usage (all modes)
set mousehide         " Hide the mouse when typing
set cursorline        " Highlights the cursor line

" Searching
set ignorecase        " Do case insensitive matching
set smartcase         " Do smart case matching
set incsearch         " Incremental search
set hlsearch          " highlight searches
set showmatch         " Show matching brackets.

" Tabs (spacing)
set expandtab         " Use spaces instead of tabs
set tabstop=4         " How many spaces a tab measures
set shiftwidth=4      " Sets >> and << width
"set autoindent
set backspace=indent,eol,start

" Folding
set nofoldenable        " Disable folds
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

" Backups
set nobackup          " Remove backup files
set noswapfile        " Remove swap files

set listchars=""
set nolist
