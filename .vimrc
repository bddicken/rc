" Use pathogen
execute pathogen#infect()

"set the map leader
let mapleader = "-"
let maplocalleader = "\\"

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
augroup cursor_position
  autocmd!
  autocmd BufReadPost *
  \ if ! exists("g:leave_my_cursor_position_alone") |
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \ exe "normal g'\"" |
  \ endif |
  \ endif
augroup END

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

" Set the vim color scheme to slate
" colorscheme zenburn
colorscheme slate


" Clang-format and refresh current buffer
nnoremap <leader>cf : ! clang-format -style=file -i expand('%:p') <cr> <cr> : edit <cr>

" Always show the file name
set modeline
set ls=2

" Shortcut for resizing
iabbrev vre vertical resize
cabbrev vre vertical resize

" To get color themes to show up correctly
let &t_Co=256

" Basically, make tabs 4 spaces
set tabstop=4
set shiftwidth=4
set sw=4
set expandtab

" cursor line and column highlighting
set cursorline
"hi CursorLine   cterm=NONE ctermbg=grey ctermfg=black
"hi CursorLine   cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white
set cursorcolumn
hi CursorColumn cterm=NONE ctermbg=darkgrey ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"
" set vim as the default man page viewer
"
let $PAGER=''

" only syntax highlight up to 120 chars per row
"set synmaxcol=120

" remove stuput concealing for LaTeX
let g:tex_conceal = ""

" Make scrollng better
set sidescroll=5
set listchars+=precedes:<,extends:>

" Turn on line numbers by default
set number

" Default to wrap
set nowrap

" Map keys to move line up
noremap <leader>- ddp
" Map keys to move line down
noremap <leader>_ dd<up><up>p

" Shortcut for uppercasing a single word when in visual mode
inoremap <leader><c-u> <esc>viwUi
" Shortcut for uppercasing a single word when in normal mode
nnoremap <leader><c-u> viwU

" Shortcut for opening vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Shortcut for sourcing vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Some misc insert-mode abbreviations
iabbrev and and

" Email abbreviation
iabbrev @@ bddicken@gmail.com
" Website abbreviation
"iabbrev ## benjdd.com
" Signature abbreviation
iabbrev SIG -- <cr>Benjamin Dicken<cr>bddicken@gmail.com

" Sourround current word with double-quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Sourround current word with single-quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
" Sourround current visual selection with double-quotes
nnoremap <leader>v" `<i"<esc>`>i"<esc>
" Sourround current visual selection with single-quotes
nnoremap <leader>v' `<i'<esc>`>i'<esc>

" Go to beginning of line
" Overrides default behavior
nnoremap H 0
" Go to end of line
" Overrides default behavior
nnoremap L $

" Disable arrow keys in visual mode, so that I'm forced to use hjkl
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

" Disable arrow keys in normal mode too
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>

" No more escape!
inoremap jk <esc>
" Overloading escape causes some other keys not to work as expected, such as
" the arrow keys. remap with caution.
"noremap <esc> <nop>

" c FileType
augroup filetype_c
  autocmd!
  autocmd FileType c setlocal nowrap
  autocmd FileType c nnoremap <buffer> <localleader>c I//<esc>
augroup END
" javascript FileType
augroup filetype_c
  autocmd!
  autocmd FileType javascript setlocal nowrap
  autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
  autocmd FileType javascript iabbrev <buffer> iff if ()<left>
augroup END
" python FileType
augroup filetype_c
  autocmd!
  autocmd FileType python setlocal nowrap
  autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
  autocmd FileType python iabbrev <buffer> iff if:<left>
augroup END
" TODO more file types

" Echo a message on startup (disabled for now)
" echom ">^.^<"

