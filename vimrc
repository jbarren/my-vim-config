execute pathogen#infect()
colorscheme solarized
syntax on
filetype plugin indent on
set number
set hidden
set switchbuf=useopen,usetab
set laststatus=2

set autowrite
set autowriteall
autocmd BufLeave,FocusLost * silent! wall

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

map <F1> :bnext<CR>
imap <F1> :bnext<CR>
map <S-F1> :bprevious<CR> 
imap <S-F1> :bprevious<CR>

"With these the cursor will change at insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

