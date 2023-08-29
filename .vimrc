" Initialize plugin system
call plug#begin('~/.vim/plugged')

" Synthwave '84 colorscheme
Plug 'artanikin/vim-synthwave84'

" List ends here.
call plug#end()

" General settings
set number                  " Show line numbers
set relativenumber          " Show line numbers relative to cursor position
set tabstop=2               " Number of spaces a <Tab> in the file counts for
set softtabstop=2           " Number of spaces for Tab while editing
set shiftwidth=2            " Number of spaces to use for auto-indenting
set expandtab               " Use spaces instead of tabs
set autoindent              " Copy indent from current line when starting a new line
set smartindent             " Do smart indenting when starting a new line
set cursorline              " Highlight the line with the cursor
set wildmenu                " Show list instead of just completing on tab press
set wrap                    " Wrap lines
set linebreak               " Wrap lines at characters in 'breakat'
set showmatch               " Show matching bracket when text indicator is over them
set background=dark	        " Set background dark
set mouse=a                 " Enable mouse support

set term=xterm-256color
"set term=screen-256color
if has('termguicolors')
    set termguicolors
endif

" Set Synthwave '84 as the default colorscheme
colorscheme synthwave84
