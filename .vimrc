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
set nu
set nowrap

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


source cscope_maps.vim


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
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'tpope/vim-rails.git'
 Plugin 'FuzzyFinder'
 Plugin 'scrooloose/nerdtree'
 			let NERDTreeWinPos='right'
			let NERDTreeWinSize=30
			map <F2> :NERDTreeToggle<CR>
 Plugin 'msanders/snipmate.vim'
 Plugin 'Valloric/YouCompleteMe'
 
 Plugin 'scrooloose/syntastic'
 			set statusline+=%#warningmsg#
			set statusline+=%{SyntasticStatuslineFlag()}
			set statusline+=%*
			let g:syntastic_always_populate_loc_list = 1
			let g:syntastic_auto_loc_list = 1
			let g:syntastic_check_on_open = 1
			let g:syntastic_check_on_wq = 0
 Plugin 'bling/vim-airline'
 Plugin 'majutsushi/tagbar'
 nmap <F8> :TagbarToggle<CR>
 

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
" Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 Plugin 'javacomplete'
 Plugin 'Lokaltog/vim-powerline'
 Plugin 'powerline/fonts'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" javacomplete 配置
" Only do this part when compiled with support for autocommands.
 autocmd Filetype java setlocal omnifunc=javacomplete#Complete
 autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
 autocmd FileType java inoremap <buffer>. .<C-X><C-O><C-P>
