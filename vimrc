call pathogen#infect()
set hidden
let mapleader=","

set nocompatible
if has("gui_running")
  set number
  set ruler
endif
syntax off

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
if has("gui_running")
  set list listchars=tab:\ \ ,trail:·
endif

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Command-T configuration
let g:CommandTMaxHeight=20

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on
filetype plugin on

" Directories for swp files
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp

" MacVIM shift+arrow-keys behavior (required in .vimrc)
"let macvim_hig_shift_movement = 1
"set selection=exclusive

" Show (partial) command in the status line
set showcmd

if has("gui_running")
  " Automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =
endif

set guifont=Inconsolata:h14
autocmd BufRead,BufNewFile *.less set filetype=css
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'
let g:LustyExplorerSuppressRubyWarning = 1
au FileType php filetype plugin indent off

" Map Tab to indent and Shift-Tab to unindent
vmap <Tab> >gv
vmap <S-Tab> <gv
