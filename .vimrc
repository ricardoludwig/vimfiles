
"" Whitespace
set nowrap                      	" don't wrap lines
set tabstop=4 shiftwidth=4      	" a tab is four spaces
" set expandtab                   	" use spaces, not tabs (optional)
set backspace=indent,eol,start  	" backspace through everything in insert mode

"" Searching
set hlsearch                    	" highlight matches
set incsearch                   	" incremental searching
set ignorecase                  	" searches are case insensitive...
set smartcase                   	" ... unless they contain at least one capital letter

"" Customizations
set ls=2                        	" always show status bar
set number                      	" show line numbers
set relativenumber					" show relative number
set cursorline                  	" display a marker on current line
colorscheme railscasts          	" set colorscheme
set t_Co=256                    	" tmux issue - forces terminal to use 256 colors

set completeopt=menuone,longest,preview " simple autocomplete for anything
set wildmode=list:longest,full  	" autocomplete for paths and files
set wildignore+=.git            	" ignore these extensions on autocomplete

set hidden                      	" change buffers without warnings even when there are unsaved changes

set backupdir=/tmp              	" directory used to save backup files
set directory=/tmp              	" directory used to save swap files

set nobackup
set nowritebackup

set noerrorbells visualbell t_vb=	" disable beep

set nocompatible                	" choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     	" display incomplete commands

set updatetime=500					" this setting controls how long to wait (in ms) before fetching type / symbol information.
set cmdheight=2						" remove 'Press Enter to continue' message when type information is longer than one line.

" open splits in a more natural way:
"set splitbelow
"set splitright
set diffopt=filler,vertical

filetype plugin indent on       	" load file type plugins + indentation
let vimlocal = expand("%:p:h") . "/.vimrc.local"

" netrw customizations
let g:netrw_liststyle = 3			" set netrw list tree style
let g:netrw_banner = 0				" removing the banner
let g:netrw_browse_split = 4		" open file in a new tab
let g:netrw_winsize = 25			" set directory explorer width to 25% of page

" highlight trailing white spaces:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabClosePreviewOnPopupClose = 1
set completeopt=longest,menuone,preview

" a minimalist approach to show limit column width
augroup collumnLimit
  autocmd!
  autocmd BufEnter,WinEnter,FileType scala,java,go
       \ highlight CollumnLimit ctermbg=DarkGrey guibg=DarkGrey
  let collumnLimit = 120 " feel free to customize
  let pattern =
		        \ '\%<' . (collumnLimit+1) . 'v.\%>' . collumnLimit . 'v'
  autocmd BufEnter,WinEnter,FileType scala,java,go
       \ let w:m1=matchadd('CollumnLimit', pattern, -1)
augroup END

" plugins

" vim-polyglot
let g:polyglot_disabled = ['go.plugin']	" disable go polyglot plugin

" vim-go
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

