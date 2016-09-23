" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
	source /etc/vim/vimrc.local
endif

set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets.
"set cursorline
set laststatus=2
set wildmenu
set ruler
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
set ambiwidth=double
set clipboard+=unnamed " to share clipboard
set number
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set incsearch
set backspace=indent,eol,start
set ruler
set noswapfile
set nobackup

" NeoBundle
set nocompatible

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Unite
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
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

" neocomplcache
NeoBundle 'Shougo/neocomplcache.vim'
" Disable AutoComplPop
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : ''
  \ }
" Plugin key-mappings.
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#close_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()

" vim-indent-guides
NeoBundle 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1

" vim-trailing-whitespace
NeoBundle 'bronson/vim-trailing-whitespace'

" vim-markdown
NeoBundle 'godlygeek/tabular'
NeoBundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_level = 6
let g:vim_markdown_new_list_item_indent = 0

" twilight
NeoBundle 'vim-scripts/twilight'

NeoBundleCheck
call neobundle#end()

set cindent
set encoding=utf-8
filetype plugin indent on
colorscheme twilight
syntax on
