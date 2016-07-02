" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif

colorscheme desert

set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets.
set cursorline
set laststatus=2
set wildmenu
set ruler
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
set ambiwidth=double
set clipboard+=unnamed " to share clipboard
set number
"set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" NeoBundle
set nocompatible

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Unite
NeoBundle 'Shougo/unite.vim'
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>

" NerdTree
NeoBundle 'scrooloose/nerdtree' 
nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

NeoBundleCheck
call neobundle#end()

syntax on
set cindent
filetype plugin indent on
