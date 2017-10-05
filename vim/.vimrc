" Copyright (C) 2017  Ratheesh <ratheeshreddy@gmail.com>
" Author: Ratheesh <ratheeshreddy@gmail.com>
"
" This program is free software; you can redistribute it and/or
" modify it under the terms of the GNU General Public License
" as published by the Free Software Foundation; either version 2
" of the License, or (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.

" Bootstrap settings {{{
set nocompatible               " be iMproved
set hidden
filetype off                  " required!
"}}}

" Plugins {{{
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

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-expand-region'
Plug 'adelarsq/vim-matchit'
Plug 'justinmk/vim-sneak'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'majutsushi/tagbar'
Plug 'sjl/gundo.vim'
" Plug 'easymotion/vim-easymotion'
Plug 'edkolev/promptline.vim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-scripts/YankRing.vim'
Plug 'antoyo/vim-licenses'
Plug 'kshenoy/vim-signature'
" Plug 'Shougo/neocomplete.vim'

call plug#end()
"}}}

" Vim vanilla settings {{{
filetype plugin indent on
" set number
set number relativenumber
set numberwidth=1
set tabstop=8
set showmatch
set showcmd
" set colorcolumn=81
execute "set colorcolumn=" . join(range(81,335), ',')
" set columns=80
set ruler
set wildignore=*.swp,*.bak,*.pyc,*.class
set wildmenu
set wildmode=longest,list
set nobackup
set noswapfile
set fileformats=unix,dos,mac
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set showcmd
set nowrap
set backspace=indent,eol,start
set autoindent
set autoread
set autowrite
set cursorline
" set cursorcolumn
if exists('+breakindent')
	set breakindent showbreak=\ +
endif
set hidden   " See http://items.sjbach.com/319/configuring-vim-right
set wmh=0    " Windows need not have height
set foldmethod=marker
set lazyredraw
set linebreak
" set copyindent
set gcr=a:blinkon0              " Disable cursor blink
set clipboard=unnamed           " Share * register w/ unnamed (system copy/paste support)
set encoding=utf-8
set scrolloff=3 " Keep 3 lines below and above the cursor
set laststatus=2
if !has('gui_running')
set t_Co=256  " Support for 256 colors
endif
set noshowmode
set fillchars="vert:|,fold:-"

let mapleader = "\<Space>"
"}}}

" General Config {{{
" hooks
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" keybindings
" nmap <Leader><Leader> :
imap jj <Esc>
nnoremap ' `
nnoremap ` '
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>r :CtrlPMRU<CR>
nnoremap <Leader>m :CtrlPMixed<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>
" nnoremap <Leader>j :
nmap <Leader><Leader> V
map <F9> :bprev<cr>
map <F10> :bnext<cr>
nmap <Leader>k :bdelete<CR>
nmap <Leader>\ :nohlsearch<CR>
" Remember last buffers loaded and file position
set viminfo='10,\"100,:20,%,n~/.viminfo'
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" }}}

" Theme {{{
syntax on
color darktheme
" }}}

" Tagbar {{{
nmap <F8> :TagbarToggle<CR>
nnoremap <leader>t :TagbarOpenAutoClose<CR>
" }}}

" Vim-airline {{{
" let base16colorspace=256  " Access colors present in 256 colorspace
let g:airline_powerline_fonts = 0
let g:airline_theme='badwolf' " sane ones -> ubaryd sol wombat
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" }}}

" lightline {{{
let g:lightline = {
	\ 'colorscheme': 'Dracula',
      	\ 'active': {
      	\   'right': [ [ 'lineinfo' ],
      	\              [ 'percent' ],
      	\              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ],
	\   'left': [ [ 'mode', 'paste' ],
      	\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      	\ 	},
	\ 'enable': {
	\ 	'statusline': 1,
	\ 	'tabline': 1,
	\ },
      	\ 'component': {
      	\   'charvaluehex': '0x%B'
      	\ },
	\ 'component_function': {
      	\   'gitbranch': 'fugitive#head'
      	\ },
   	\ }
"}}}

" Vim-licenses {{{
let g:licenses_copyright_holders_name = 'Ratheesh <ratheeshreddy@gmail.com>'
let g:licenses_authors_name = 'Ratheesh <ratheeshreddy@gmail.com>'
let g:licenses_default_commands = ['gplv2', 'mit']
" }}}

" CtrlP {{{
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
	let g:ctrlp_user_command = 'ag %s --hidden -l --nocolor -g ""'
endif

" vim-sneak{{{
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
let g:sneak#label = 1
let g:sneak#s_next = 1
"}}}

let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:ctrlp_show_hidden = 1

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
 let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" }}}

" ctrlp-funky {{{
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
" }}}

" nerd-commentar {{{
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
" }}}

" Easymotion {{{
nmap <Leader>j <Plug>(easymotion-s)
"}}}

" UltiSnips {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:indentLine_faster=1
"}}}

" Syntastic {{{
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_reuse_loc_lists= 0
" }}}

"Expand region {{{
" nmap K <Plug>(expand_region_expand)
" nmap J <Plug>(expand_region_shrink)

call expand_region#custom_text_objects({
    \ 'a]' :1,
    \ 'ab' :1,
    \ 'aB' :1,
    \ 'ii' :0,
    \ 'ai' :0,
    \ 'iI' :0,
    \ 'aI' :0,
    \ 'if' :0,
    \ 'af' :0,
    \ 'ic' :0,
    \ 'ac' :0,
    \ })
" }}}

" YankRing {{{
nmap <leader>y :YRShow<cr>
" put the yankring_history file in ~/.backup
" let g:yankring_history_dir = '~/.backup'
" }}}

"End of File
