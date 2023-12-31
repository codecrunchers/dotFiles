
set encoding=UTF-8
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" On-demand loadin
	Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
	Plug 'https://github.com/vim-airline/vim-airline' " Show status bar
	Plug 'https://github.com/vim-airline/vim-airline-themes.git' " Customize status bar
	Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Change color Schemes
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto complete Python
	Plug 'https://github.com/ryanoasis/vim-devicons' " Display developer icons
	Plug 'https://tpope.io/vim/fugitive.git'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()

" set guifont=hack_nerd_font:h21
" Set default colorscheme
colorscheme molokai
" Customize status bar
let g:airline_theme='dessert'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_symbols.branch = 'B'
let g:airline_symbols.readonly = 'RO'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.space  = ''
silent! map <F2> :NERDTreeToggle<CR>
let g:NERDTreeToggle="<F2>"
autocmd VimEnter * NERDTree
" Tab for window movement
nmap <Tab> <C-w>w



set mouse=a

" devicons: reasonable defaults from webinstall.dev/vim-devicons
source ~/.vim/plugins/devicons.vim
source ~/.vim/coc.vim
"let g:loaded_matchparen=1
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
"let g:UltiSnipsUsePythonVersion = 3set 
set noswapfile

