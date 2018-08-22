execute pathogen#infect()

runtime! plugin/sensible.vim

" Enable file type and indent detection
filetype plugin indent on

colorscheme tomorrow-night

" For Command-T
set switchbuf=usetab

set encoding=utf-8

" Set shell for external commands
set shell=zsh
" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=.
set directory=.
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
" set cursorline
" Set number of columns for indenting
set shiftwidth=2
" Replace tabs with spaces
set expandtab
" Make tabs as wide as two spaces
set tabstop=2
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set noignorecase
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Use relative line numbers
" if exists("&relativenumber")
"   set relativenumber
"   au BufReadPost * set relativenumber
" endif

" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Configure browser for haskell_doc.vim
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

let g:tagbar_ctag_bin = "/opt/boxen/homebrew/bin/ctags"

" Close vim if NERDTree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-\> :NERDTreeToggle<CR>

autocmd BufNewFile,BufRead *.mm set filetype=objcpp

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" JS syntastic checkers
let g:syntastic_javascript_checkers = ['eslint', 'jshint']

" Ruby config files
autocmd BufNewFile,BufRead {Gem,Fast,Match,App,Deliver,Pod}file set filetype=ruby
autocmd BufNewFile,BufRead podspec set filetype=ruby
autocmd BufNewFile,BufRead erb set filetype=ruby

" Packer JSON templates
autocmd BufNewFile,BufRead packer set filetype=json

" Ansible inventory
autocmd BufNewFile,BufRead inventory set filetype=dosini

" Use local/dynamic vimtags
set tags=.vimtags,;~/.vimtags
let g:gutentags_ctags_tagfile='.vimtags'

" Airline config
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1

" Ignore paths for CommandT
let g:CommandTWildIgnore='*/node_modules,*/.bundle,*/build,*/.meteor'

" Skip these dirs when grepping
:let Grep_Skip_Dirs = '.meteor dump .build.* .build *node_modules* .git'

" Disable session autosave
:let g:session_autosave = 'no'

" rustfmt
let g:rustfmt_autosave = 1
" Workaround for https://github.com/rust-lang/rust.vim/issues/118
let g:syntastic_rust_checkers = ['cargo']


" ctrlp
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_switch_buffer = 'etvh'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_mruf_relative = 1

" python-mode
let g:pymode_python = 'python3'
" defer to syntastic
let g:pymode_lint_on_write = 0
set completeopt-=preview

" python checkers
let g:syntastic_python_checkers = ['python', 'flake8', 'mypy', 'pycodestyle', 'pep8']

" vim-test key mappings
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g
let test#strategy = "dispatch"
let g:test#preserve_screen = 1

" Typescript
let g:syntastic_typescript_checkers = ['tslint', 'tsc']
