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
set nobackup
set autowrite
set autowriteall
autocmd BufLeave,FocusLost * silent! wall

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Leader config
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlPMixed<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <Leader>f :Ag
nnoremap <Leader>q <c-w>c

" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When on uses space instead of tabs
set tabstop    =2
set softtabstop =2
set shiftwidth  =2
set expandtab

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

"Tmux navigation shortcuts
let g:tmux_navigator_save_on_switch = 1
let g:tmux_navigator_no_mappings = 1
"nnoremap <silent> <c-H> :TmuxNavigateLeft<cr>
"Workaround to make it work in neovim
if has('nvim')
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif
nnoremap <silent> <c-J> :TmuxNavigateDown<cr>
nnoremap <silent> <c-K> :TmuxNavigateUp<cr>
nnoremap <silent> <c-L> :TmuxNavigateRight<cr>
