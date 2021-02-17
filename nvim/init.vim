" Vundle

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/src/github.com/VundleVim/Vundle.vim
set rtp+=/usr/local/opt/fzf

call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'aserebryakov/vim-todo-lists'
Plugin '907th/vim-auto-save'
Plugin 'junegunn/fzf.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'ruanyl/vim-gh-line'
Plugin 'vim-ruby/vim-ruby'
Plugin 'benizi/vim-automkdir'
Plugin 'airblade/vim-gitgutter'
Plugin 'dracula/vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype on
filetype indent on
filetype plugin on

" UTF-8 all the things!
set encoding=utf-8

syntax on

" Line numbering
set nu

" Line hightlight
set cursorline

" line column
set colorcolumn=120

" System clipboard
set clipboard=unnamed
set clipboard+=unnamedplus

" Move between split without mouse, by using navigation key of vim
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Whitespace
set list
set listchars=tab:>-,trail:.,nbsp:.,space:.

" Dracula
let g:dracula_colorterm = 0
color dracula

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Open NERDTree automatically when vim opens a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <F2> :mksession! ~/vim_session
map <F3> :source ~/vim_session

" Inverse tab mapping to shift + tab
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" Stop wasting time with typo!
command! WQ wq
command! Wq wq
command! W w
command! Q q

" Go to mappings
nmap <silent> Cd <Plug>(coc-definition)
nmap <silent> Ct <Plug>(coc-type-definition)
nmap <silent> Cp <Plug>(coc-implementation)
nmap <silent> Cr <Plug>(coc-references)

" Open fzf quickly
nnoremap <C-P> :Files<CR>

" Reload config quickly
nnoremap <leader>sv :source $MYVIMRC<CR>

