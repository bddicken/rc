" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
"filetype plugin on      " use the file type plugins
 
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

" Turn on line numbers by default
set number

" Set the vim color scheme to slate
colorscheme slate

" Always show the file name
set modeline
set ls=2

" To get color themes to show up correctly
let &t_Co=256

" Default to no wrap
set nowrap

" tabs become 4 spaces
set tabstop=4
set shiftwidth=4
set tabstop=4
set sw=4
set expandtab

" cursor line and column highlighting
set cursorcolumn
set cursorline
"hi CursorLine   cterm=NONE ctermbg=grey ctermfg=black

"
" set vim as the default man page viewer
"
let $PAGER=''

" only syntax highlight up to 120 chars
"set synmaxcol=120

" remove stuput concealing for LaTeX
let g:tex_conceal = ""

"""""""""""""""""""""
"""" Status Line """"
"""""""""""""""""""""
hi User1 ctermbg=darkgreen ctermfg=white   guibg=darkgreen guifg=white
hi User2 ctermbg=darkred   ctermfg=white  guibg=darkred   guifg=white
hi User3 ctermbg=blue  ctermfg=white guibg=blue  guifg=white
set statusline=
set statusline+=%1*  "switch to User1 highlight
set statusline+=%F   "full filename
set statusline+=%2*  "switch to User2 highlight
set statusline+=%y   "filetype
set statusline+=%3*  "switch to User3 highlight
set statusline+=%l   "line number
set statusline+=%*   "switch back to statusline highlight
set statusline+=%P   "percentage thru file
