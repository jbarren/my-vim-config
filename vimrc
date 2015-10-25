execute pathogen#infect()
"set t_Co=256
let $NVIM_TUI_ENABLE_TRUE_COLOR=0
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

"Leader config
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <Leader>f :Ag 

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
set tabstop    =2 
set softtabstop =2
set shiftwidth  =2
set expandtab

"Powerline settings. Dependant on the python installation path
let $PYTHONPATH='/usr/lib/python3.5/site-packages'
set laststatus=2

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
