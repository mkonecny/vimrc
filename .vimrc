"{{{ normal settings
set nocompatible
set hidden
set wildmode=full
set wildmenu
set wildignore=*.class,*.cma,*.cmi,*.cmxa,*.pyc,*.o
set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase
set ruler
set mouse=a
set nobackup
set noswapfile
set virtualedit=""
set cursorline
 " don't change the directory to the current working file
set noautochdir
set t_Co=256
syntax enable
set noerrorbells 
set novisualbell 
set t_vb=
set guioptions-=r
set winaltkeys=no
set guioptions-=T
set backspace=indent,eol,start
set guioptions-=l
set go-=R
set go-=L
set tags=./tags,tags,./../tags,./../../tags
set ssop-=options "do not store global and local values in session
set ssop-=folds "do not store folds
"Spelling intereferes with colorschemes greatly. Hence it must go
"setlocal spell spelllang=en_us
"set spell
set complete-=i "make completion ignore modules in the file system
set fillchars=vert:│    " that's a vertical box-drawing character
"}}}
" Vundle {{{
filetype off
let g:vundle_default_git_proto='git'
set rtp+=~/.vim/bundle/vundle
set rtp+=~/reps/ctrlp.vim
set rtp+=/usr/local/share/ocamlmerlin/vim
call vundle#rc()
Bundle 'gmarik/vundle'
"doesn't exist yet
"Bundle 'vim-scripts/prev_indent'
"Bundle 'vim-scripts/Align'
Bundle 'godlygeek/tabular'
Bundle 'spiiph/vim-space'
Bundle 'dahu/SearchParty'
"Bundle 'vim-scripts/Mark--Karkat'
Bundle 'davidhalter/jedi-vim'
Bundle 'vim-scripts/SQLUtilities'
Bundle 'ivanov/vim-ipython'
Bundle 'https://github.com/chreekat/vim-paren-crosshairs.git'
Bundle 'nanotech/jellybeans.vim'
" <C-W>o to zoom/unzoom
Bundle 'vim-scripts/ZoomWin'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'
"Bundle 'rgrinberg/merlin', {'v' : 'master', 'rtp' : 'vim/'}
"Bundle 'dbext.vim'
"set macmeta on macs
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'SirVer/ultisnips'
Bundle 'Shougo/vimproc'
"Bundle 'Shougo/neocomplcache'
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
"Bundle 'oceandeep'
Bundle 'kana/vim-textobj-user'
Bundle 'ciaranm/inkpot'
Bundle 'chrisv/vim-chrisv'
Bundle 'darktango.vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'Lokaltog/vim-powerline'
"rainbow paren settings are commented out at the bottom
"Bundle 'kien/rainbow_parentheses.vim'
"included in distro nowadays
"Bundle 'mirell/vim-matchit'
Bundle 'vim-scripts/searchfold.vim'
"Bundle 'vim-scripts/SearchComplete'
"has annoying bugs
"Bundle "spf13/PIV"
"takes too much screen space
"Bundle 'vim-scripts/ShowMarks'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-abolish.git'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'majutsushi/tagbar'
"Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'ervandew/supertab'
Bundle 'rson/vim-conque'
"Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'troydm/easybuffer.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-rvm'
"Bundle 'therubymug/vim-pyte'
"Bundle 'jnurmine/Zenburn'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'https://github.com/jpo/vim-railscasts-theme.git'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'vim-scripts/vimwiki'
Bundle 'jpalardy/vim-slime'
"Bundle 'xolog/vim-easytags'
"Bundle 'vim-scripts/taglist.vim'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'mileszs/ack.vim'
"Bundle 'torandu/vim-bufexplorer'
"Doesn't play well with fuzzyfinder swithc buffer
Bundle 'pangloss/vim-javascript'
Bundle 'skammer/vim-css-color'
"Bundle 'kien/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-obsession'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'
Bundle 'paradigm/TextObjectify'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'rgrinberg/elm.vim.git'
Bundle 'def-lkb/ocp-indent-vim.git'
Bundle 'bitc/vim-hdevtools.git'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'glts/vim-textobj-comment.git'
Bundle 'rking/ag.vim'
Bundle 'dbakker/vim-projectroot'
"}}}
" syntax/filetype on {{{
syntax on
filetype plugin indent on
"}}}
" general mappings {{{
" CtrlP and Fuf mappings {{{
nnoremap <silent> <C-p>      :CtrlP<CR>
nnoremap <silent> <C-n>      :CtrlPBuffer<CR>
" we don't want this anymore becasue we are using ctrlp for that
"nnoremap <silent> <C-p>      :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <C-f><C-p> :CtrlPCurWD<CR>
nnoremap <silent> <C-f>p     :FufFile<CR>
nnoremap <silent> <C-f><C-d> :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <C-f>d     :FufDirWithFullCwd<CR>
nnoremap <silent> <C-f>D     :FufDir<CR>
nnoremap <silent> <C-j>      :CtrlPMRU<CR>
nnoremap <silent> <C-k>      :FufMruCmd<CR>
nnoremap <silent> <C-b>      :FufBookmarkDir<CR>
"nnoremap <silent> <C-f><C-t> :FufTag<CR>
" search for tag somewhere
nnoremap <silent> <C-f><C-f> :CtrlPTag<CR>
"nnoremap <silent> <C-f>t     :FufTag!<CR>
"search for tag in buffer
nnoremap <silent> <C-f>t     :CtrlPBufTag<CR>
nnoremap <silent> g]         :FufTagWithCursorWord!<CR>
"search for tag in all buffers
nnoremap <silent> <C-f><C-t> :CtrlPBufTagAll<CR>
"nnoremap <silent> <C-f><C-f> :FufTaggedFile<CR>
nnoremap <silent> <C-f><C-j> :FufJumpList<CR>
nnoremap <silent> <C-f><C-g> :CtrlPChange<CR>
nnoremap <silent> <C-f><C-q> :CtrlPQuickfix<CR>
nnoremap <silent> <C-f><C-l> :CtrlPLine<CR>
nnoremap <silent> <C-f><C-h> :FufHelp<CR>
nnoremap <silent> <C-f><C-b> :FufAddBookmark<CR>
vnoremap <silent> <C-f><C-b> :FufAddBookmarkAsSelectedText<CR>
nnoremap <silent> <C-f><C-e> :FufEditInfo<CR>
nnoremap <silent> <C-f><C-r> :CtrlPClearAllCaches<CR>
" as opposed to
"nnoremap <silent> <C-f><C-r> :CtrlPClearCache<CR>
let g:ctrlp_extensions = ['tag', 'quickfix', 'line', 'buffertag']
" fuf settings {{{
let g:fuf_modesDisable=[]
let g:fuf_mrufile_maxItem=1000
let g:fuf_mrucmd_maxItem=400
let g:fuf_mrufile_exclude='\v\~$|\.(bak|sw[po])$|^(\/\/|\\\\|\/mnt\/)'
"}}}
"}}}
" Function key mappings {{{
nnoremap <silent> <F2> :silent noh<CR>
nnoremap <silent> <F3> :BD<CR>
nnoremap <silent> <C-F4> :NERDTree<CR>
nnoremap <silent> <F4> gg=G``
nnoremap <silent> <C-F5> :Git diff --staged<CR>
nnoremap <silent> <F5> :Git diff<CR>
nnoremap <silent> <F6> :Reload<CR>:w<CR>
nnoremap <F8> :Git pull<CR>
nnoremap <C-F8> :Git push<CR>  
nnoremap <silent> <F10> :edit!<CR>
nnoremap <silent> <F11> :GundoToggle<CR>
"}}}
" tab mappings {{{
nnoremap ,tc :tabclose<CR>
nnoremap ,tn :tabnew<CR>
nnoremap <silent> <C-tab> :tabnext<CR>
nnoremap <silent> <C-S-tab> :tabprev<CR>
"}}}
" * splits maps {{{
" TODO : fix this boilerplate
nnoremap s <C-W>
nnoremap - <C-W>-
nnoremap + <C-W>+
nnoremap <M-<> <C-W><
nnoremap <M->> <C-W>>
nnoremap <silent> <M-1> :1wincmd w<CR>
nnoremap <silent> <M-2> :2wincmd w<CR>
nnoremap <silent> <M-3> :3wincmd w<CR>
nnoremap <silent> <M-4> :4wincmd w<CR>
nnoremap <silent> <M-5> :5wincmd w<CR>
nnoremap <silent> <M-6> :6wincmd w<CR>
nnoremap <silent> <M-7> :7wincmd w<CR>
nnoremap <silent> <M-8> :8wincmd w<CR>
nnoremap <silent> <M-9> :9wincmd w<CR>
"}}}
" random mappings {{{
"cd to the directory of the current buffer
nnoremap ,cd :cd %:p:h<CR>
:inoremap <C-D> <Esc>:call setline(".",substitute(getline(line(".")),'^\s*',matchstr(getline(line(".")-1),'^\s*'),''))<CR>I
"Execute the line under the cursor
nnoremap ,el yy:! <C-R><C-0><BS><CR>
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
cnoremap w!! w !sudo dd of=%
inoremap jk <esc>
"open last search in quickfix window
nnoremap <silent> ,/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
nnoremap ,, :cd ..<CR>:pwd<CR>
nnoremap ,pw :pwd <CR>                                            G
vnoremap <silent> ,ql :! sqlasaservice.py<CR>
nnoremap <silent> ,[[ V20<<<ESC>
nnoremap <silent> ,re :w<CR>:Git checkout %<CR>
nnoremap <silent> ,ds ciw <ESC>
"}}}
" alignment mappings {{{
vnoremap ,a= :Tab /=<CR>
vnoremap ,a, :Tab /,<CR>
vnoremap ,a: :Tab /:<CR>
vnoremap ,a> :Tab /=><CR>
vnoremap ,am :Tab /import<CR>
"}}}
" multi cursor mappings - plugin disabled {{{
let g:multi_cursor_use_default_mapping=0
" plugin doesn't work atm
" Default mapping
"let g:multi_cursor_next_key='<C-s>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'
"}}}
"}}}
" color theme settings {{{
set background=dark
if has('gui_running')
    "colorscheme inkpot
    colorscheme hickop
else
    colorscheme jellybeans
endif
"}}}
" laptop specifc settings{{{
function! IsLaptop()
    return system('hostname -s') =~ 'rudi-UX31A'
endfunction
" bigger font for laptop screen
if IsLaptop()
    set guifont=Inconsolata\ Medium\ 14
else
    set guifont=Inconsolata\ Medium\ 11
endif
"}}}
" close fugitive diff - <leader>gD {{{
function! MyCloseDiff()
    if (&diff == 0 || getbufvar('#', '&diff') == 0)
                \ && (bufname('%') !~ '^fugitive:' && bufname('#') !~ '^fugitive:')
        echom "Not in diff view."
        return
    endif

    " close current buffer if alternate is not fugitive but current one is
    if bufname('#') !~ '^fugitive:' && bufname('%') =~ '^fugitive:'
        if bufwinnr("#") == -1
            b #
            bd #
        else
            bd
        endif
    else
        bd #
    endif
endfunction
nnoremap <Leader>gD :call MyCloseDiff()<cr>
"}}}
" plugin settings {{{
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1
let g:slime_target="tmux"
let g:slime_python_ipython=1
let g:ackprg="ack -H --nocolor --nogroup --column"
let g:pymode_lint_write=0
let g:pymode_run_key='R'
" miniBufExpl settings {{{
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1
"}}}
"random formatting settings
let g:sqlutil_align_comma=1
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"
let g:gundo_right=1
"au BufEnter * if &ft != 'help' | call ProjectRootCD() | endif
"}}}
" abbreviations {{{
"replace this stuff with abolish
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
iabbrev convinience convenience"}}}
" formatting and indentation {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nowrap
set wrapmargin=0
set textwidth=0
set formatprg=par
"}}}
" ruby specifics {{{
autocmd FileType ruby set expandtab
autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType ruby set autoindent
autocmd FileType ruby compiler ruby
"}}}
" ocaml specifics {{{
au FileType ocaml setlocal commentstring=(*%s*)
au FileType ocaml setlocal comments=sr:(*,mb:*,ex:*)
au FileType ocaml setlocal shiftwidth=2
au FileType ocaml nnoremap ,o4 :! camlp4of % -printer o<CR>
au FileType ocaml nnoremap <silent> \ss :call OCaml_switch(0)<CR>
"TODO : fix this hard coded stuff
au FileType ocaml source /home/rudi/.opam/4.00.1/share/typerex/ocp-indent/ocp-indent.vim
au BufNewFile,BufRead *.mlt set filetype=ocaml
"let g:ocaml_folding=1 "slows shit down too much
let g:syntastic_ocaml_use_janestreet_core=1
let g:syntastic_ocaml_janestreet_core_dir="/home/rudi/.opam/4.00.1/lib/core/"
"let g:syntastic_ocaml_use_ocamlbuild=1
let g:syntastic_ocaml_checkers = ['merlin']
"nnoremap <silent> <leader>. :call Ocaml_print_type("normal")<CR>
"vnoremap <silent> <LocalLeader>. :<C-U>call Ocaml_print_type("visual")<CR>`<
au FileType ocaml UltiSnipsAddFiletypes ocaml
au FileType ocaml call SuperTabSetDefaultCompletionType("<c-x><c-o>")
hi EnclosingExpr guibg=Black
"other (failed) attempts
"hi link EnclosingExpr CursorLine 
"hi link EnclosingExpr DiffText 
"}}}
" random autocmds {{{
au FileType python set nonu "python mode insists on turning this on...
" Some idiotic plugin goes out of it's way to turn on line numberings...
set nonumber 
au FileType * set nonumber
set nosol
set colorcolumn=80
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType python UltiSnipsAddFiletypes python
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"}}}
" * caps -> control remapping {{{
function! SetCapsToCtrl()
    call system('setxkbmap -option ctrl:nocaps')
endfunction
call SetCapsToCtrl()
nnoremap <silent> ,cap :call SetCapsToCtrl()<CR>
"}}}
" nerdtree settings {{{
let NERDTreeMapOpenVSplit='\s'
let NERDTreeIgnore=[ '\.pyc$','\.o$','\.cmi$', '\.cmx$','\.cmo$','\.cma$','\.so$','\.a$']
"}}}
" work arounds for some stuff {{{
au vimenter * map s <C-W>
au vimenter * :so ~/.vimrc
"}}}
" * status line settings - currently disabled {{{
"set statusline=
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y
"set statusline+=%#error#
"set statusline+=[[%{winnr()}]] "show current window
"set statusline+=%#todo#%-{fugitive#statusline()}%*
"set statusline+=%=%c,%l/%L\ %P
"}}}
" * haskell settings {{{
"let g:haskell_conceal_wide=1
" in case neco-ghc donesn't work
let $PATH=$PATH . ':' . expand("~/.cabal/bin")
let g:necoghc_enable_detailed_browse = 1
let g:ghc="/usr/bin/ghc"
let g:haddock_browser="/usr/bin/firefox"
au FileType haskell compiler ghc
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <S-F1> :HdevtoolsClear<CR>
"}}}
" * UltiSnips settings {{{
let g:UltiSnipsSnippetDirectories=["/home/rudi/.vim/bundle/ultisnips/UltiSnips/"]
"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-'>"
"}}}
"smart cwd settings {{{
function! s:setcwd()
  let cph = expand('%:p:h', 1)
  if cph =~ '^.\+://' | retu | en
  for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
    let wd = call('find'.(mkr =~ '/$' ? 'dir' : 'file'), [mkr, cph.';'])
    if wd != '' | let &acd = 0 | brea | en
  endfo
  exe 'lc!' fnameescape(wd == '' ? cph : substitute(wd, mkr.'$', '.', ''))
endfunction
au BufEnter * call s:setcwd()
"}}}
" vim:fen:fdm=marker:fmr={{{,}}}:fdl=0:fdc=1:ts=2:sw=2:sts=2

