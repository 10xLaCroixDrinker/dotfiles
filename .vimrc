" Run pathogen
"set rtp+=/Users/jking/.vim/autoload/pathogen.vim
call pathogen#infect()

set nocompatible                    " get out of vi-compatible mode
set history=1000                    " remember 1000 lines of history
set undolevels=500                  " make sure I can revert back any changes
"set clipboard+=unnamed              " share clipboard among vi windows
set ffs=unix,dos,mac                " support the filetypes in this order
set viminfo+=!                      " make sure it can save viminfo
set isk+=_,$,@,%,#,-                " none of these should be word dividers

" Make Diff better
set diffopt=filler
set diffopt+=iwhite

set nobackup                          " make backup file
"set backupdir=$HOME/.vim/backup     " where to put backup files
"set directory=/tmp                  " temp directory (this is where .swp files will be)
set noautowrite                     " do not save the file automatically if it changes

set lsp=0                           " space text out (easier to read)
set wildmenu                        " make use of the 'status line' to show command line commands, filenames and more
"set lz                              " lazy redraw (don't redraw while running macros)
"set backspace=indent,eol,start     " Specify backspacing options
set backspace=2                     " make backspace work normal
set whichwrap+=<,>                  " cursor keys can wrap too
set shortmess=atI                   " shortens messages to avoid 'press a key' prompt
set report=0                        " tell me when anything is changed via :

set ch=2                            " Command line height
set ic                              " Show incomplete commands
"set ruler                           " Enable always showing the Position
set showcmd                         " Show Incomplete Commands
"set so=5                            " Set the resistance to scroll
set nois

"set smartcase                      " Override ignorecase if the search pattern is typed in
"set ignorecase                     " Ignore case in pattern searchs
set hlsearch                        " Switch on search pattern highlighting.
set showmatch                       " show matching brackets
set mat=2                           " how many tenths of a second to blick matching bracket
set noincsearch                     " do 'highlight' as you type your search phrase
set novisualbell                    " don't blink at me
set noerrorbells                    " don't make a sound

set fo=tcrqn                        " see help deals with formating

set ai                              " autoindent
set si                              " smartindent
set cindent                         " do c-style indenting
set tabstop=2                       " set the same (tabstop)
set shiftwidth=2                    " set the same (tabstop)
set softtabstop=2                   " set the same (tabstop)
set cino=2                          " set the same (tabstop)
set expandtab                       " Expand Tabs to Whitespace
set wrap                            " wrap lines
set number

"let c_comment_strings=1             " I like highlighting strings inside C comments

" sets chars to represent tab,trail... when in list mode; try ':set list'
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" sets status line to display file format, type, current char ascii,hex codes, current cursor position
set laststatus=2                    " always show the status line
set statusline=%F%m%r%h%w\ line\ %l\ of\ %L\ (%p%%)\ col\ %v\ \ \ \%03.3b,0x\%02.2B

" Set folding Options
set foldmethod=marker
set fmr={{{,}}}
set nofen

" Hide the mouse pointer while typing
"set mousehide
"set mousem=popup
"set mouset=500

" Enable the use of the mouse in normal mode (Can resize windows, click to
" switch and place the cursor
set mouse=

filetype plugin on
filetype on                         " detect the type of file
filetype plugin indent on           " load filetype plugins

" Set esp to Javascript
au BufNewFile,BufRead *.esp,*.json so $VIMRUNTIME/syntax/javascript.vim
au BufNewFile,BufRead *.frag,*.tpl so $VIMRUNTIME/syntax/html.vim
au BufNewFile,BufRead *.less so $VIMRUNTIME/syntax/css.vim
au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.scss set filetype=scss

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
  au BufNewFile,BufRead *.md,*.markdown set nonumber
augroup END

" Setup JSHint
let g:syntastic_javascript_checkers = ['jshint']

"nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

"set paste                          " Disable formating while in past mode
map <F9> :set invpaste<CR>          " Paste Toggle on F9
map <C-n> :n<CR>
map <C-b> :prev<CR>

map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

nmap <C-F> :Ack<space>

set magic                           " Change the special charecters for searching
"set csprg=cscope                    " Use C Scope instead of ctags
set smd                             " Enable Show Mode on the last line
set cin                             " Enable C Indenting
set notitle                         " Adding this should prevent the 'Thanks for flying with VIM'










" Take care of NumPad
:imap <Esc>Oq 1
:imap <Esc>Or 2
:imap <Esc>Os 3
:imap <Esc>Ot 4
:imap <Esc>Ou 5
:imap <Esc>Ov 6
:imap <Esc>Ow 7
:imap <Esc>Ox 8
:imap <Esc>Oy 9
:imap <Esc>Op 0
:imap <Esc>On .
:imap <Esc>OQ /
:imap <Esc>OR *
:imap <Esc>Ol +
:imap <Esc>OS -

" Set nice colors
:syntax enable

map ,sc :highlight Comment term=bold ctermfg=white<CR>
map ,hc :highlight Comment term=bold ctermfg=darkgray<CR>
map ,nc :highlight Comment term=bold ctermfg=black<CR>

" for jamie!
set background=dark

" solarized options 
let g:solarized_termcolors = 16
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

" vim:set ts=2 sw=2 nowrap:
