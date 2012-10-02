set nocompatible
set hidden
set wildmenu
set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase
set ruler
" not very smart after all...
"set smartindent
set mouse=a
set nobackup
set noswapfile
set cursorline
set noautochdir " automatically change the directory to the current working file
set t_Co=256
syntax enable
set noerrorbells 
set novisualbell 
set t_vb=
set guioptions-=r
set winaltkeys=no
set guioptions-=T
set guioptions-=l
set go-=R
set go-=L
set tags=./tags
"Spelling intereferes with colorschemes greatly. Hence it must go
"setlocal spell spelllang=en_us
"set spell
set complete-=i "make completion ignore modules in the file system

set fillchars=vert:│    " that's a vertical box-drawing character

"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-'>"

"Vundle stuff"{{{
let g:vundle_default_git_proto='git'
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/Align'
Bundle 'vim-scripts/SQLUtilities'
Bundle 'ivanov/vim-ipython'
Bundle 'nanotech/jellybeans.vim'
" <C-W>o to zoom/unzoom
Bundle 'vim-scripts/ZoomWin'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'dbext.vim'
"set macmeta on macs
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'michaeljsmith/vim-indent-object'
"Bundle 'spolu/dwm.vim'
Bundle 'vim-scripts/UltiSnips'
"Bundle 'sirver/ultisnips'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/neocomplcache'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'ujihisa/neco-ghc'
"doesn't work unfortunately
"Bundle 'kana/vim-textobj-indent'
Bundle 'dag/vim2hs'
Bundle 'sjl/gundo.vim'
"Bundle 'ehamberg/vim-cute-python'
Bundle 'mru.vim'
"clobbers your keys
"Bundle 'joonty/vim-xdebug'
Bundle 'danro/rename.vim'
Bundle 'hickop'
Bundle 'oceandeep'
Bundle 'kana/vim-textobj-user'
Bundle 'ciaranm/inkpot'
Bundle 'chrisv/vim-chrisv'
Bundle 'darktango.vim'
Bundle 'L9'
Bundle 'FuzzyFinder'
"rainbow paren settings are commented out at the bottom
"Bundle 'kien/rainbow_parentheses.vim'
"included in distro nowadays
"Bundle 'mirell/vim-matchit'
Bundle 'vim-scripts/searchfold.vim'
Bundle 'vim-scripts/SearchComplete'
Bundle 'jesstelford/phpfolding.vim'
"has annoying bugs
"Bundle "spf13/PIV"
"takes too much screen space
"Bundle 'vim-scripts/ShowMarks'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'majutsushi/tagbar'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
" perl-support bundle somehow messes up with indentation somehow
" also messes up ctrl-j
"Bundle 'vim-scripts/perl-support.vim'
Bundle 'klen/python-mode'
Bundle 'rson/vim-conque'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
"we use vam for the next two plugins
"Bundle 'MarcWeber/vim-addon-ocaml'
"Bundle 'jrk/vim-ocaml'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-ruby/vim-ruby'
Bundle 'therubymug/vim-pyte'
Bundle 'jnurmine/Zenburn'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'https://github.com/jpo/vim-railscasts-theme.git'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'vim-scripts/vimwiki'
"Bundle 'jpalardy/vim-slime'
Bundle 'rgrinberg/vim-slime'
"Bundle 'xolog/vim-easytags'
Bundle 'vim-scripts/taglist.vim'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'mileszs/ack.vim'
"Bundle 'torandu/vim-bufexplorer'
"Doesn't play well with fuzzyfinder swithc buffer
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'LStinson/perlhelp-vim'
Bundle 'skammer/vim-css-color'
"}}}
filetype plugin indent on

let NERDTreeIgnore=['\.pyc$']
"fuzzy find settings"{{{
let g:fuf_modesDisable=[]
let g:fuf_mrufile_maxItem=1000
let g:fuf_mrucmd_maxItem=400
let g:fuf_mrufile_exclude='\v\~$|\.(bak|sw[po])$|^(\/\/|\\\\|\/mnt\/)'
"}}}
"Fuzzy find keys"{{{
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
nnoremap <silent> g]         :FufTagWithCursorWord!<CR>
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
"}}}
nnoremap <F1> :cnext<CR>
nnoremap <C-F1> :cprev<CR>
nnoremap <silent> <F2> :silent noh<CR>
nnoremap <silent> <F3> :BD<CR>
nnoremap <silent> <C-F4> :NERDTree<CR>
nnoremap <silent> <F6> :TagbarToggle<CR>
nnoremap <silent> <F7> :call ToggleFold()<CR>
nnoremap <F8> :Git pull<CR>
nnoremap <C-F8> :Git push<CR>  
nnoremap <silent> <F9> @@n
nnoremap <silent> <C-F9> @@N
nnoremap <silent> <F10> :edit!<CR>
nnoremap <silent> <F11> :GundoToggle<CR>
let g:EasyMotion_leader_key='<F12>'
"There should be a better of doing this
nnoremap ,t1 :set tags=~/Airtime/tags<CR>
nnoremap ,t2 :set tags=~/Airtime/python_apps/tags<CR>
nnoremap ,t3 :set tags=~/Airtime/python_apps/media-monitor2/tags<CR>
nnoremap ,t4 :set tags=~/Airtime/airtime_mvc/application/tags<CR>
"cd to the directory of the current buffer
nnoremap ,cd :cd %:p:h<CR>
"Execute the line under the cursor
nnoremap ,el yy:! <C-R><C-0><BS><CR>
"Set this keymapping only for ocaml mode (and perhaps _oasis files too)
nnoremap ,ob :! ocaml setup.ml -all<CR>
"edit vimrc
nnoremap ,ev :e ~/.vimrc<CR>
"reload vimrc
nnoremap ,er :so ~/.vimrc<CR>
"note the trailing space in the next 2 mappings
nnoremap ,aa :Ack! 
"ack word under cursor
nnoremap ,aw :Ack! -w <C-R><C-W><CR>
"cd + ack
nnoremap ,ac :cd %:p:h<CR>:Ack! 
nnoremap ,q :q!<CR>
nnoremap ,m :bmodified<CR>
nnoremap ,cc :pclose<CR>
"quick alignment shortcuts for selections
vnoremap ,a= :Align =<CR>
vnoremap ,a, :Align ,<CR>
vnoremap ,a: :Align :<CR>
vnoremap ,a> :Align =><CR>
vnoremap ,am :Align import<CR>
cnoremap w!! w !sudo dd of=%
inoremap jk <esc>
"inoremap <esc> <nop>
"open last search in quickfix window
nnoremap <silent> ,/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
nnoremap ,, :cd ..<CR>
nnoremap ,pw :pwd <CR>
nnoremap ,c1 :cd ~/Airtime/<CR>
nnoremap ,c2 :cd ~/Airtime/python_apps/media-monitor2<CR>
nnoremap ,c3 :cd ~/Airtime/python_apps/<CR>
vnoremap <silent> ,ql :! sqlasaservice.py<CR>
nnoremap <silent> ,[[ V20<<<ESC>


"dwm vim stuff
let g:dwm_map_keys=0
"nnoremap <silent> ,n :call DWM_New()<CR>
"nnoremap <silent> ,c :call DWM_Close()<CR>
"nnoremap <silent> ,h :call DWM_Focus()<CR>
"nnoremap <silent> ,l :call DWM_Full()<CR>

"{{{ folding toggle function
let g:FoldMethod=1
fun! ToggleFold()
    if g:FoldMethod == 0
        exe 'set foldmethod=indent'
        let g:FoldMethod=1
        echo 'indent'
    else
        exe 'set foldmethod=marker'
        let g:FoldMethod=0
        echo 'marker'
    endif
endfun
"}}}

"color theme settings"{{{
set background=dark
if has('gui_running')
  colorscheme zenburn
else
  colorscheme hickop
endif
"}}}

function! IsLaptop()
    return system('hostname -s') =~ 'rudi-UX31A'
endfunction

" bigger font for laptop screen
if IsLaptop()
    set guifont=Inconsolata\ Medium\ 14
else
    set guifont=Inconsolata\ Medium\ 11
endif

let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1
let g:slime_target="tmux"
let g:slime_python_ipython=1
let g:ackprg="ack -H --nocolor --nogroup --column"

let g:pymode_lint_write=0
let g:pymode_run_key='R'

"minibufexplr settings"{{{
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
"}}}
"random formatting settings
let g:sqlutil_align_comma=1
let g:PHP_autoformatcomment=0
"javascript/html indentation"{{{
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"
let g:gundo_right=1
"}}}
"abbreviations"{{{
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
iabbrev useufl useful
iabbrev defautl default
iabbrev lazy_buidl lazy_build
iabbrev metclass metaclass
iabbrev aroudn around
iabbrev xcept except
iabbrev excetp except
iabbrev buidl build
iabbrev p_el print_endline
iabbrev dependacies dependencies
iabbrev dependancies dependencies
iabbrev pfpf Printf.printf
iabbrev let_ let _ =
iabbrev letu let () =
iabbrev iofs int_of_string
iabbrev sofi string_of_int
iabbrev fofs float_of_string
iabbrev sofs string_of_float
iabbrev lofe List.of_enum
iabbrev eofl List.enum
iabbrev ibp import ipdb; ipdb.set_trace()
iabbrev gb group_by
iabbrev yeild yield
iabbrev bund Bundle
iabbrev yiedl yield
iabbrev __class __class__
iabbrev __name __name__
iabbrev convinience convenience
"fast 'java' style definition
iabbrev psf public static function
"php debugging function
iabbrev logi Logging::info
iabbrev logw Logging::warn
iabbrev logd logging::debug
"}}}
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set wrapmargin=0
set textwidth=0
set foldmethod=indent
set formatprg=par

" we have a special folding script for php
autocmd FileType php setlocal fdm=manual

autocmd FileType ocaml setlocal commentstring=(*%s*)
autocmd FileType ocaml setlocal shiftwidth=2
autocmd FileType ocaml nnoremap ,ic T*ct*

"let g:ocaml_folding=1
let g:syntastic_ocaml_use_janestreet_core=1
let g:syntastic_ocaml_janestreet_core_dir="~/.opam/4.00.0/lib/core/"

autocmd FileType python set nonu "python mode insists on turning this on...
" Some idiotic plugin goes out of it's way to turn on line numberings...
set nonumber
autocmd FileType * set nonumber
set nosol
set colorcolumn=80
"let g:haskell_conceal_wide=1
" in case neco-ghc donesn't work
let $PATH=$PATH . ':' . expand("~/.cabal/bin")
let g:UltiSnipsSnippetDirectories=["/home/rudi/.vim/UltiSnips"]
let g:haddock_browser="firefox"
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_enable_underbar_completion=1
" proper omnicompletion through neocomplete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" A whole bunch of stuff to let us open and close lines with going into
" insert mode

function! AddEmptyLineBelow()
  call append(line("."), "")
endfunction

function! AddEmptyLineAbove()
  let l:scrolloffsave=&scrolloff
  " Avoid jerky scrolling with ^E at top of window
  set scrolloff=0
  call append(line(".") - 1, "")
  if winline() != winheight(0)
    silent normal! <C-e>
  end
  let &scrolloff=l:scrolloffsave
endfunction

function! DelEmptyLineBelow()
  if line(".") == line("$")
    return
  end
  let l:line=getline(line(".") + 1)
  if l:line =~ '^\s*$'
    let l:colsave=col(".")
    .+1d
    ''
    call cursor(line("."), l:colsave)
  end
endfunction

function! DelEmptyLineAbove()
  if line(".") == 1
    return
  end
  let l:line=getline(line(".") - 1)
  if l:line =~ '^\s*$'
    let l:colsave=col(".")
    .-1d
    silent normal! <C-y>
    call cursor(line("."), l:colsave)
  end
endfunction


" for pesky machines (Should be probably be in .xinit or at least bashrc
" but i'm too to keep those portable)
function! SetCapsToCtrl()
    call system('setxkbmap -option ctrl:nocaps')
endfunction
call SetCapsToCtrl()

nnoremap <silent> <A-d> :call DelEmptyLineBelow()<CR>
nnoremap <silent> <A-D> :call DelEmptyLineAbove()<CR>
nnoremap <silent> <A-o> :call AddEmptyLineBelow()<CR>
nnoremap <silent> <A-O> :call AddEmptyLineAbove()<CR>

"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

nnoremap s <C-W>
let NERDTreeMapOpenVSplit='\s'
au vimenter * map s <C-W>
au vimenter * :so ~/.vimrc
nnoremap - <C-W>-
nnoremap + <C-W>+
nnoremap <M-<> <C-W><
nnoremap <M->> <C-W>>

" navigate windows with alt keys
nnoremap <silent> <M-1> :1wincmd w<CR>
nnoremap <silent> <M-2> :2wincmd w<CR>
nnoremap <silent> <M-3> :3wincmd w<CR>
nnoremap <silent> <M-4> :4wincmd w<CR>
nnoremap <silent> <M-5> :5wincmd w<CR>
nnoremap <silent> <M-6> :6wincmd w<CR>
nnoremap <silent> <M-7> :7wincmd w<CR>
nnoremap <silent> <M-8> :8wincmd w<CR>
nnoremap <silent> <M-9> :9wincmd w<CR>

set statusline=
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y
set statusline+=%#error#
set statusline+=[[%{winnr()}]] "show current window
set statusline+=%#todo#%-{fugitive#statusline()}%*
set statusline+=%=%c,%l/%L\ %P

