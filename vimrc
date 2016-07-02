" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif

colorscheme desert

set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets.
"set ignorecase " Do case insensitive matching
"set smartcase " Do smart case matching
"set incsearch " Incremental search
"set autowrite " Automatically save before commands like :next and :make
"set hidden " Hide buffers when they are abandoned
"set mouse=a " Enable mouse usage (all modes)
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

" Gemfileのシンタックス
autocmd BufNewFile,BufRead Gemfile setlocal filetype=ruby

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

NeoBundle 'thinca/vim-quickrun'
NeoBundle 'scrooloose/nerdtree' 
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1

NeoBundle 'Townk/vim-autoclose'
NeoBundle 'vim-ruby/vim-ruby'

NeoBundle 'hail2u/vim-css3-syntax'
"NeoBundle 'sudo.vim'

NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'claco/jasmine.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
" vimにcoffeeファイルタイプを認識させる
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
" インデントを設定
autocmd FileType coffee     setlocal sw=2 sts=2 ts=2 et

NeoBundleCheck
call neobundle#end()

syntax on
set cindent
filetype plugin indent on
