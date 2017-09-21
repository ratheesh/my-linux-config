set nocompatible               " be iMproved
set hidden
filetype off                   " required!

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'Shougo/vimproc.vim', { 'do': 'make' }

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-expand-region'
Plug 'adelarsq/vim-matchit'
Plug 'justinmk/vim-sneak'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'sjl/gundo.vim'
Plug 'easymotion/vim-easymotion'
Plug 'edkolev/promptline.vim'
Plug 'flazz/vim-colorschemes'
" Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'Yggdroot/indentLine'
" Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

filetype plugin indent on
set number
set tabstop=8
set showmatch
set showcmd
" set colorcolumn=81
execute "set colorcolumn=" . join(range(81,335), ',')
" set columns=80
set ruler
set wildignore=*.swp,*.bak
set wildmode=longest,list
set noswapfile
set fileformats=unix,dos,mac
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set showcmd
set nowrap
set backspace=indent,eol,start
set autoindent
set copyindent
syntax on
set encoding=utf-8
set laststatus=2
set t_Co=256
set fillchars="vert:|,fold:-"

let mapleader = "\<Space>"

" general config

" Theme setting
color darktheme

nmap <leader>bn :bnext<cr>
nmap <leader>bp :bprev<cr>
map <F9> :bprev<cr>
map <F10> :bnext<cr>

"configure individual Plugins
"vim-airline
" let base16colorspace=256  " Access colors present in 256 colorspace
let g:airline_powerline_fonts = 0
let g:airline_theme='wombat'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
	  let g:ctrlp_user_command = 'ag %s --hidden -l --nocolor -g ""'
endif

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_show_hidden = 1

nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>u :CtrlPMRU<CR>
nnoremap <Leader>m :CtrlPMixed<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>
nmap <Leader><Leader> V

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:indentLine_faster=1

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" colorscheme solarized

"Expand region
map K <Plug>(expand_region_expand)
"End of File
