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

let g:dracula_colorterm = 0
color dracula
