set number
set ruler
syntax on

" Fullscreen takes up entire screen
" set fuoptions=maxhorz,maxvert

" Command-T for CommandT
" macmenu &File.New\ Tab key=<D-T>
" map <Leader>t :CommandT<CR>
" imap <Leader>t <Esc>:CommandT<CR>
" let g:CommandTMaxHeight=15
" let g:CommandTAcceptSelectionMap = '<C-t>'
" let g:CommandTAcceptSelectionTabMap = '<CR>'

" Command-Return for fullscreen
macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

" Command-Shift-F for Ack
map <D-F> :Ack<space>

" Don't beep
set visualbell

" Start without Toolbar
set guioptions-=T
set antialias
set gfn=Nitti\ Basic\ Normal:h14
" set guifont=Ubuntu\ Mono:h14
set linespace=1
" set background=dark
colorscheme Tomorrow-Night-Eighties
nnoremap <esc> :noh<return><esc>


" turn-on distraction free writing mode for markdown files
" not automatically for now
" au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} call DistractionFreeWriting()

function! DistractionFreeWriting()
  " Toggle spell-checking
  :map <F5> :setlocal spell! spelllang=en_us<CR>
  colorscheme iawriter
  set guifont=Nitti\ Basic\ Normal:h21
  set background=light
  set lines=30 columns=70  				" size of the editable area
  set fuoptions=background:#00f5f6f6
  set guioptions-=r 					" remove righ scrollbar
  set laststatus=0 					" don't show status line
  set noruler 						" don't show ruler
  set fullscreen 						" go to fullscreen editing mode
  set linebreak 						" break the lines on words
  set wrap
  set nolist
endfunction

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

