" title
set title
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
" search
set hlsearch    "To highlight searched phrases
set ignorecase  "To ignore the case (whether lower or upper case)
set incsearch   "Vim start searching as and when typing the search phrase
set smartcase
" number
set number
set relativenumber
" automatically indent when adding a curlybracket, etc.
set smartindent
" tab
set tabstop=2
set expandtab
set shiftwidth=2
" swapfile
set noswapfile
" enable syntax highlighting.
syntax on
" use UTF-8 
set encoding=utf-8
" show line number, cursor position
set ruler

set path+=**
set showcmd
set hidden
set nocompatible
filetype plugin on
let mapleader = " "

" To save, ctrl-s.
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>

" To insert timestamp, press F3
nmap <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M%p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M%p")<CR><Esc>

" Show autocomplete menu
set wildmenu

set nocursorline
" Using space bar in normal mode to open and close a fold
":nnoremap <space> za

" Shortcuts for moving between tabs
" Alt-j to move to the tab to the left
noremap <A-j> gT
" Alt-k to move to the tab to the right
noremap <A-k> gt



nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Close_On_Select = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Process_File_Always = 1


autocmd BufNewFile,BufRead *.xml source ~/.vim/plugged/xmledit/ftplugin/xml.vim
autocmd BufNewFile *.xml source ~/.vim/plugged/xmledit/ftplugin/xmlheader.vim
autocmd BufNewFile,BufRead *.py compiler python

inoremap <leader>w :w<RC>
inoremap <leader>q :q<RC>
inoremap jk <Esc>

imap <c-space> <c-x><c-o>
call plug#begin('~/.vim/plugged')

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'vim-scripts/multvals.vim'
Plug 'vim-scripts/genutils'
Plug 'vimwiki/vimwiki'
Plug 'vim-scripts/highlight_current_line.vim'
Plug 'vim-scripts/xmledit'
Plug 'mikewest/vim-markdown'
Plug 'aliev/vim-python'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'yegappan/taglist'
Plug 'vim-scripts/pythoncomplete'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'joshdick/onedark.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
call plug#end()
colorscheme onedark
