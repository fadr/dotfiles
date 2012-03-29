" Fullscreen takes up entire screen
set fuoptions=maxhorz,maxvert

" Command-T for CommandT
" macmenu &File.New\ Tab key=<D-T>
" map <D-t> :CommandT<CR>
" imap <D-t> <Esc>:CommandT<CR>

" Command-Return for fullscreen
macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

" Command-Shift-F for Ack
map <D-F> :Ack<space>

" Don't beep
set visualbell

" Start without Toolbar
set guioptions-=T
set antialias
set guifont=Inconsolata:h14
set background=light
colorscheme solarizedmod
