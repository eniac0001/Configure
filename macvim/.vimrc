" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
filetype off

" Vundle manage plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Bundle 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set history=100

set encoding=utf-8
set fenc=utf-8
set fileencodings=utf-8,chinese,cp936,gb2312,gb18030,big5

set guioptions=aAce

set tabpagemax=30
set showtabline=2

syntax enable

set number
set cursorline
set ruler
set smartindent

set showmatch
set matchtime=1

set incsearch
set hlsearch
set ignorecase

set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set smarttab

set wrap

set whichwrap=b,s,<,>,[,]

set sidescroll=10

set autoindent

set mousehide
set mouse=v
set visualbell
set showcmd

if has("gui_macvim")
    colorscheme molokai
    let g:molokai_origin = 1

    set linespace=4
    set guifont=Monaco:h14
    set lines=80 columns=300

    autocmd StdinReadPre * let s:std_in=1
    map <C-n> :NERDTreeToggle<CR>
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    let g:neocomplete#enable_at_startup = 1

    let mapleader="," 
    let g:NERDCustomDelimiters = {
        \ 'html': {  'left': '<!-- ', 'right': '-->', 'leftAlt': '/* ','rightAlt': ' */' },
        \ 'xhtml': {  'left': '<!-- ', 'right': '-->', 'leftAlt': '/* ','rightAlt': ' */'} 
     \ }    
    let NERD_html_alt_style=1

endif
