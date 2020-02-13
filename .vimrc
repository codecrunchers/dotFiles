if exists(':let') == 0
    finish
endif
set nocompatible               " be iMproved
filetype off                   " required!

"<Leader> key is ,
let mapleader=","


let g:os = "unix"

" Vundle init
set rtp+=~/.vim/bundle/vundle

" Require Vundle
try
    call vundle#rc()
catch
    echohl Error | echo "Vundle is not installed. Run 'cd ~/.vim/ && git submodule init && git submodule update'" | echohl None
endtry



"{{{ Vundle Bundles!
if exists(':Bundle')
    Bundle 'vim-scripts/Conque-GDB'
    Bundle 'ervandew/supertab'
    Bundle 'godlygeek/tabular'
    Bundle 'scrooloose/nerdtree.git'
    Bundle 'tpope/vim-fugitive'
    Bundle 'ctrlpvim/ctrlp.vim'
    Bundle 'rust-lang/rust.vim'
    Bundle 'cespare/vim-toml.git'
    Bundle 'majutsushi/tagbar'
end
"}}}


" Tagbar 
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


" ConqueGDB Setting
let g:ConqueGdb_Leader = '\' 
let g:ConqueGdb_Print = g:ConqueGdb_Leader . 'p'
let g:ConqueTerm_Color=2            " 1: strip color after 200 line, 2: always with color
let g:ConqueTerm_CloseOnEnd=1       " close conque when program ends running
let g:ConqueTerm_StartMessages=0    " display warning message if conqueTerm is configed incorrect

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
let g:terraform_fmt_on_save = 1


" Ctags & AutoComplete Harmony
au BufWritePost *.c,*.cpp,*.h silent! !ctags -R &


autocmd BufNewFile,BufRead *.ts set syntax=javascript

set autoread
" Reload and Write on Exit
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w
