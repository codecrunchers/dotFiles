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
"    Bundle 'vim-scripts/Conque-GDB'
    Bundle 'ervandew/supertab'
    Bundle 'godlygeek/tabular'
    Bundle 'scrooloose/nerdtree.git'
"    Bundle 'tpope/vim-fugitive'
    Bundle 'ctrlpvim/ctrlp.vim'
    Bundle 'rust-lang/rust.vim'
"    Bundle 'cespare/vim-toml.git'
    Bundle 'majutsushi/tagbar'
"    Bundle 'hashivim/vim-terraform'
end
"}}}


"let g:rustfmt_autosave = 1
"" rust customizations
autocmd BufNewFile,BufRead *.rs set formatprg=rustfmt
"" rust.vim
"au FileType rust compiler cargo
"
"" shortcuts remap
" rust specific
"autocmd FileType rust nmap <Leader>r :make run<CR>
"autocmd FileType rust nmap <Leader>b :make build<CR>
"autocmd FileType rust nmap <Leader>t :make test<CR>
"
"
"
"
nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_rust = {
  \ 'ctagstype' : 'rust',
  \ 'kinds' : [
      \'T:types,type definitions',
      \'f:functions,function definitions',
      \'g:enum,enumeration names',
      \'s:structure names',
      \'m:modules,module names',
      \'c:consts,static constants',
      \'t:traits',
      \'i:impls,trait implementations',
  \]
  \}


set backspace=indent,eol,start

filetype plugin indent on     " required! 
syntax enable
syntax on
colorscheme desert

filetype plugin indent on     " required!
syntax enable

let g:NERDTreeMapHelp = "h"
" Tree of nerd
nnoremap <Leader>n :NERDTreeToggle<CR>

" Tab completion - local
let g:SuperTabDefaultCompletionType = "<c-x><c-p>"

let NERDTreeIgnore = ['\.pyc$','\.sock$']


nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

silent! nmap <C-p> :NERDTreeToggle<CR>
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
"let g:terraform_fmt_on_save = 1


" Ctags & AutoComplete Harmony
au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &


autocmd BufNewFile,BufRead *.ts set syntax=javascript

set autoread
" Reload and Write on Exit
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w

" Rust 
nmap <F6> :RustRun<CR>

" Font
set guifont=Anonymous\ Pro\ 13  

"source ~/.vim/rust.vim
