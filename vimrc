" My currently working version Vimrc
" I kept all other settings in plugins/settings directory
"
" Eddie Kao
" http://blog.eddie.com.tw
" eddie@digik.com.tw

runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
"call pathogen#incubate()
filetype plugin indent on
call pathogen#infect('bundle/{}')
call pathogen#helptags()

" hit enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" select ALL
map <C-A> ggVG


" interact with clipboard
vnoremap <C-C> "+y
nnoremap <C-V> "*p"

" ctags setting
set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" fix ack search results leak into terminal
set shellpipe=>
