set nocompatible

if exists(':let') == 0
    finish
endif
set nocompatible               " be iMproved
filetype off                   " required!

"<Leader> key is ,
let mapleader=","

let g:os = "unix"

" Vundle init
set rtp+=~/.vim/bundle/Vundle.vim

" Require Vundle
try
    call vundle#rc()
catch
    echohl Error | echo "Vundle is not installed. Run 'cd ~/.vim/ && git submodule init && git submodule update'" | echohl None
endtry



"{{{ Vundle Bundles!
if exists(':Bundle')
    Bundle 'ervandew/supertab'
    Bundle 'godlygeek/tabular'
    Bundle 'scrooloose/nerdtree.git'
    Bundle 'ctrlpvim/ctrlp.vim'
    Bundle 'rust-lang/rust.vim'
    Bundle 'majutsushi/tagbar'
    Bundle 'hashivim/vim-terraform'
    Bundle 'vim-syntastic/syntastic'
    Bundle 'tpope/vim-fugitive'
end
"}}}
"
"
"RUST
autocmd BufNewFile,BufRead *.rs set formatprg=rustfmt 
let g:rustfmt_autosave = 1

"" shortcuts remap

set backspace=indent,eol,start

filetype plugin indent on     " required! 
syntax enable
syntax on
colorscheme desert

" NERDTree
let g:NERDTreeMapHelp = "h"
" Tab completion - local
let g:SuperTabDefaultCompletionType = "<c-x><c-p>"
let NERDTreeIgnore = ['\.pyc$','\.sock$']

silent! map <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeToggle="<F2>"
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"


" Tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" terraform auto-format
let g:terraform_fmt_on_save = 1

autocmd BufNewFile,BufRead *.ts set syntax=javascript

set autoread
" Reload and Write on Exit
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w

" Font
set guifont=Anonymous\ Pro\ 13  

" Remap : Tab for window movement
nmap <Tab> <C-w>w

" TagBar <F8>
silent! nmap <F8> :Tagbar<CR>


"enable mouse support
set mouse=a

" check file change every 4 seconds ('CursorHold') and reload the buffer upon detecting change
set autoread
au CursorHold * checktime

set number



" ?
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=2
set nofoldenable
set foldmethod=syntax
set foldlevelstart=10
set foldnestmax=10
set ttimeoutlen=0

" Cursor related yo modes
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
" auto insert mode
start
