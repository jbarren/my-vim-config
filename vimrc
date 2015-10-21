execute pathogen#infect()
set t_Co=256
colorscheme jellybeans
syntax on
filetype plugin indent on
set number
set hidden
set switchbuf=useopen,usetab
set laststatus=2
set noswapfile

set autowrite
set autowriteall
autocmd BufLeave,FocusLost * silent! wall

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"map <F1> :bnext<CR>
"imap <F1> :bnext<CR>
"map <S-F1> :bprevious<CR> 
"imap <S-F1> :bprevious<CR>

"With these the cursor will change at insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"Leader config
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

" set the cursor to a vertical line in insert mode and a solid block
" " in command mode
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
set tabstop    =2 
set softtabstop =2
set shiftwidth  =2
set expandtab
