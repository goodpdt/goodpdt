"File
set nocompatible
set encoding=utf-8

"Display
set autoindent
set tabstop=2
set shiftwidth=2
set noexpandtab
set ruler
set ru
set cursorline
set hlsearch
set showmatch
set showcmd
set mouse=a

nnoremap <C-L> :nohl<CR><C-L>


" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc


syntax on		" syntax highlight
set hlsearch		" search highlighting

if has("gui_running")	" GUI color and font settings
	set guifont=Osaka-Mono:h20
	set background=dark 
	set t_Co=2          " 256 color mode
	set cursorline        " highlight current line
	colors moria
	highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none
else
	" terminal color settings
	colors ricky
endif


"Edit
set backspace=indent,eol,start
set incsearch
set mouse=a
set startofline
"filetype plugin indent on
set omnifunc=syntaxcomplete#Complete



" --- move around splits {
" move to and maximize the below split 
map <C-J> <C-W>j<C-W>_
" move to and maximize the above split 
map <C-K> <C-W>k<C-W>_
" move to and maximize the left split 
nmap <c-h> <c-w>h<c-w><bar>
" move to and maximize the right split  
nmap <c-l> <c-w>l<c-w><bar>
set wmw=0                     " set the min width of a window to 0 so we can maximize others 
set wmh=0                     " set the min height of a window to 0 so we can maximize others
" }



"Vundle~~
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///goodpdt/gmarik/path/to/plugin'
"Suggest Bundles
Bundle 'scrooloose/nerdtree'
	let NERDTreeWinPos='right'
	let NERDTreeWinSize=30
	map <F2> :NERDTreeToggle<CR>
Bundle 'msanders/snipmate.vim'


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
