"Vim plug configuration
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
Plug 'Valloric/YouCompleteMe'
Plug 'rking/ag.vim'
Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'haya14busa/incsearch.vim'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'ntpeters/vim-better-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jszakmeister/vim-togglecursor'
Plug 'rust-lang/rust.vim'
Plug 'jiangmiao/auto-pairs'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Add plugins to &runtimepath
call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=0
colorscheme distinguished
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
set autoindent
set smartindent
set cindent
autocmd BufLeave,FocusLost * silent! wall

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" Rust settings
let g:rustfmt_autosave = 1
let g:ycm_rust_src_path = 'usr/src/rust/src'

"Leader config
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlPMixed<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <Leader>f :Ag 
nnoremap <Leader>q <c-w>c
nnoremap <Leader>g :YcmCompleter GoTo<CR>
nnoremap <Leader>q :bw<CR>

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
let g:indentLine_color_gui = '#585958'
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

