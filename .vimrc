set nocompatible
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set ruler
set smartindent
set mouse=a
set t_vb=
set nobackup
set cursorline
set autochdir " automatically change the directory to the current working file
set t_Co=256
syntax enable

set noerrorbells novisualbell t_vb=
"indentation
"gui
set guioptions-=r
set guioptions-=T
set guioptions-=l
set go-=R
set go-=L
set tags=./tags
setlocal spell spelllang=en_us
set spell
set complete-=i "make completion ignore modules in the file system

filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
" perl-support bundle somehow messes up with indentation somehow
Bundle 'vim-scripts/perl-support.vim'
Bundle 'rson/vim-conque'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
"Bundle 'MarcWeber/vim-addon-ocaml'
Bundle 'jrk/vim-ocaml'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-ruby/vim-ruby'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'https://github.com/jpo/vim-railscasts-theme.git'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'jpalardy/vim-slime'
"Bundle 'xolog/vim-easytags'
Bundle 'vim-scripts/taglist.vim'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'mileszs/ack.vim'
"Bundle 'torandu/vim-bufexplorer'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'vim-scripts/snippetsEmu'
Bundle 'vim-scripts/snippetsEmu-bundles'

filetype plugin indent on

let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 1000
let g:fuf_mrucmd_maxItem = 400
let g:fuf_mrufile_exclude = '\v\~$|\.(bak|sw[po])$|^(\/\/|\\\\|\/mnt\/)'


nnoremap <silent> <C-n>      :FufBuffer<CR>
nnoremap <silent> <C-p>      :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <C-f><C-p> :FufFileWithFullCwd<CR>
nnoremap <silent> <C-f>p     :FufFile<CR>
nnoremap <silent> <C-f><C-d> :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <C-f>d     :FufDirWithFullCwd<CR>
nnoremap <silent> <C-f>D     :FufDir<CR>
nnoremap <silent> <C-j>      :FufMruFile<CR>
nnoremap <silent> <C-k>      :FufMruCmd<CR>
nnoremap <silent> <C-b>      :FufBookmarkDir<CR>
nnoremap <silent> <C-f><C-t> :FufTag<CR>
nnoremap <silent> <C-f>t     :FufTag!<CR>
noremap  <silent> g]         :FufTagWithCursorWord!<CR>
nnoremap <silent> <C-f><C-f> :FufTaggedFile<CR>
nnoremap <silent> <C-f><C-j> :FufJumpList<CR>
nnoremap <silent> <C-f><C-g> :FufChangeList<CR>
nnoremap <silent> <C-f><C-q> :FufQuickfix<CR>
nnoremap <silent> <C-f><C-l> :FufLine<CR>
nnoremap <silent> <C-f><C-h> :FufHelp<CR>
nnoremap <silent> <C-f><C-b> :FufAddBookmark<CR>
vnoremap <silent> <C-f><C-b> :FufAddBookmarkAsSelectedText<CR>
nnoremap <silent> <C-f><C-e> :FufEditInfo<CR>
nnoremap <silent> <C-f><C-r> :FufRenewCache<CR>

nnoremap <silent> <F2> :silent noh<CR>
nnoremap <silent> <C-F5> :Errors<CR>
nnoremap <silent> <F3> :BD<CR>
nnoremap <silent> <C-F4> :NERDTree<CR>



set background=dark

if has('gui_running')
  colorscheme railscasts
else
  colorscheme solarized
endif

set guifont=DejaVu\ Sans\ Mono\ 10
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1
let g:slime_target = "tmux"
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"minibufexplr settings
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

"let g:EasyMotion_leader_key = ''

"abbreviations
iabbrev pust puts
iabbrev coutn count
iabbrev foudn found
iabbrev tahn than
iabbrev shoulld should
iabbrev bottmo bottom
iabbrev teh the
iabbrev packge package
iabbrev seperate separate
iabbrev storign storing


set shiftwidth=2
set tabstop=2
set expandtab
